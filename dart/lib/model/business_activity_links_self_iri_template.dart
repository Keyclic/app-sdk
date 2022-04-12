//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksSelfIriTemplate {
  /// Returns a new [BusinessActivityLinksSelfIriTemplate] instance.
  BusinessActivityLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [BusinessActivityLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSelfIriTemplate(
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

    return other is BusinessActivityLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BusinessActivityLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return BusinessActivityLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<BusinessActivityLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, BusinessActivityLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityLinksSelfIriTemplate?>(
            key, BusinessActivityLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityLinksSelfIriTemplate>;
  }

  // maps a json object with a list of BusinessActivityLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksSelfIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<BusinessActivityLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              BusinessActivityLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BusinessActivityLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
