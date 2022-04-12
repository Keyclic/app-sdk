//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksThumbnail {
  /// Returns a new [BusinessActivityLinksThumbnail] instance.
  BusinessActivityLinksThumbnail({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BusinessActivityLinksThumbnail] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksThumbnail(
      href: json[r'href'],
      iriTemplate: BusinessActivityLinksThumbnailIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the thumbnail associated to the given businessactivity.
  String? href;

  BusinessActivityLinksThumbnailIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksThumbnail &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BusinessActivityLinksThumbnail> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksThumbnail>[];
    }
    return json
        .map((value) {
          return BusinessActivityLinksThumbnail.fromJson(value);
        })
        .whereType<BusinessActivityLinksThumbnail>()
        .toList();
  }

  static Map<String, BusinessActivityLinksThumbnail> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksThumbnail>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityLinksThumbnail?>(
            key, BusinessActivityLinksThumbnail.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityLinksThumbnail>;
  }

  // maps a json object with a list of BusinessActivityLinksThumbnail-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksThumbnail>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BusinessActivityLinksThumbnail>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BusinessActivityLinksThumbnail.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityLinksThumbnail[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
