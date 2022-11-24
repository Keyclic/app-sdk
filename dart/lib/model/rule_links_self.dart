//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinksSelf {
  /// Returns a new [RuleLinksSelf] instance.
  RuleLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [RuleLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleLinksSelf(
      href: json[r'href'],
      iriTemplate: RuleLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given rule.
  String? href;

  RuleLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<RuleLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleLinksSelf>[];
    }

    return json.fold(<RuleLinksSelf>[],
        (List<RuleLinksSelf> previousValue, element) {
      final RuleLinksSelf? object = RuleLinksSelf.fromJson(element);
      if (object is RuleLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksSelf>{};
    }

    return json.entries.fold(<String, RuleLinksSelf>{},
        (Map<String, RuleLinksSelf> previousValue, element) {
      final RuleLinksSelf? object = RuleLinksSelf.fromJson(element.value);
      if (object is RuleLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinksSelf-objects as value to a dart map
  static Map<String, List<RuleLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinksSelf>>(
          key, RuleLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
