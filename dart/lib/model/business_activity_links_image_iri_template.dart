//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksImageIriTemplate {
  /// Returns a new [BusinessActivityLinksImageIriTemplate] instance.
  BusinessActivityLinksImageIriTemplate({
    this.mapping,
  });

  /// Returns a new [BusinessActivityLinksImageIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksImageIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksImageIriTemplate(
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

    return other is BusinessActivityLinksImageIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BusinessActivityLinksImageIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksImageIriTemplate>[];
    }
    return json
        .map((value) {
          return BusinessActivityLinksImageIriTemplate.fromJson(value);
        })
        .whereType<BusinessActivityLinksImageIriTemplate>()
        .toList();
  }

  static Map<String, BusinessActivityLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksImageIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityLinksImageIriTemplate?>(
            key, BusinessActivityLinksImageIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityLinksImageIriTemplate>;
  }

  // maps a json object with a list of BusinessActivityLinksImageIriTemplate-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksImageIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<BusinessActivityLinksImageIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              BusinessActivityLinksImageIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityLinksImageIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
