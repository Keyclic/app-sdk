//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksSelf {
  /// Returns a new [BusinessActivityLinksSelf] instance.
  BusinessActivityLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BusinessActivityLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSelf(
      href: json[r'href'],
      iriTemplate:
          BusinessActivityLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given businessactivity.
  String? href;

  BusinessActivityLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BusinessActivityLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksSelf>[];
    }
    return json
        .map((value) {
          return BusinessActivityLinksSelf.fromJson(value);
        })
        .whereType<BusinessActivityLinksSelf>()
        .toList();
  }

  static Map<String, BusinessActivityLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksSelf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityLinksSelf?>(
            key, BusinessActivityLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityLinksSelf>;
  }

  // maps a json object with a list of BusinessActivityLinksSelf-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BusinessActivityLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BusinessActivityLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
