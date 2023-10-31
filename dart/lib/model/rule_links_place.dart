//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinksPlace {
  /// Returns a new [RuleLinksPlace] instance.
  RuleLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [RuleLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinksPlace? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleLinksPlace(
      href: json[r'href'],
      iriTemplate: RuleLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given rule.
  String? href;

  RuleLinksPlaceIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksPlace &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<RuleLinksPlace> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleLinksPlace>[];
    }

    return json.fold(<RuleLinksPlace>[],
        (List<RuleLinksPlace> previousValue, element) {
      final RuleLinksPlace? object = RuleLinksPlace.fromJson(element);
      if (object is RuleLinksPlace) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinksPlace> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksPlace>{};
    }

    return json.entries.fold(<String, RuleLinksPlace>{},
        (Map<String, RuleLinksPlace> previousValue, element) {
      final RuleLinksPlace? object = RuleLinksPlace.fromJson(element.value);
      if (object is RuleLinksPlace) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinksPlace-objects as value to a dart map
  static Map<String, List<RuleLinksPlace>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinksPlace>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinksPlace>>(
          key, RuleLinksPlace.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleLinksPlace[href=$href, iriTemplate=$iriTemplate]';

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
