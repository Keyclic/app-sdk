//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinksCategory {
  /// Returns a new [RuleLinksCategory] instance.
  RuleLinksCategory({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [RuleLinksCategory] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinksCategory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleLinksCategory(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : RuleLinksCategoryIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the category associated to the given rule.
  String? href;

  RuleLinksCategoryIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksCategory &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<RuleLinksCategory> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <RuleLinksCategory>[];
    }

    return json.fold(<RuleLinksCategory>[],
        (List<RuleLinksCategory> previousValue, element) {
      final RuleLinksCategory? object = RuleLinksCategory.fromJson(element);
      if (object is RuleLinksCategory) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinksCategory> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksCategory>{};
    }

    return json.entries.fold(<String, RuleLinksCategory>{},
        (Map<String, RuleLinksCategory> previousValue, element) {
      final RuleLinksCategory? object =
          RuleLinksCategory.fromJson(element.value);
      if (object is RuleLinksCategory) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinksCategory-objects as value to a dart map
  static Map<String, List<RuleLinksCategory>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinksCategory>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinksCategory>>(
          key, RuleLinksCategory.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RuleLinksCategory[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
