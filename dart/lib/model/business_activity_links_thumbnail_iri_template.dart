//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksThumbnailIriTemplate {
  /// Returns a new [BusinessActivityLinksThumbnailIriTemplate] instance.
  BusinessActivityLinksThumbnailIriTemplate({
    this.mapping,
  });

  /// Returns a new [BusinessActivityLinksThumbnailIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksThumbnailIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksThumbnailIriTemplate(
      mapping: BusinessActivityLinksImageIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksThumbnailIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BusinessActivityLinksThumbnailIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksThumbnailIriTemplate>[];
    }
    return json
        .map((value) {
          return BusinessActivityLinksThumbnailIriTemplate.fromJson(value);
        })
        .whereType<BusinessActivityLinksThumbnailIriTemplate>()
        .toList();
  }

  static Map<String, BusinessActivityLinksThumbnailIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksThumbnailIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityLinksThumbnailIriTemplate?>(
            key, BusinessActivityLinksThumbnailIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityLinksThumbnailIriTemplate>;
  }

  // maps a json object with a list of BusinessActivityLinksThumbnailIriTemplate-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksThumbnailIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<BusinessActivityLinksThumbnailIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BusinessActivityLinksThumbnailIriTemplate.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityLinksThumbnailIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
