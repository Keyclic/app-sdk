//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksSchemaIriTemplate {
  /// Returns a new [BusinessActivityLinksSchemaIriTemplate] instance.
  BusinessActivityLinksSchemaIriTemplate({
    this.mapping,
  });

  /// Returns a new [BusinessActivityLinksSchemaIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksSchemaIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSchemaIriTemplate(
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

    return other is BusinessActivityLinksSchemaIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BusinessActivityLinksSchemaIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksSchemaIriTemplate>[];
    }
    return json
        .map((value) {
          return BusinessActivityLinksSchemaIriTemplate.fromJson(value);
        })
        .whereType<BusinessActivityLinksSchemaIriTemplate>()
        .toList();
  }

  static Map<String, BusinessActivityLinksSchemaIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksSchemaIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityLinksSchemaIriTemplate?>(
            key, BusinessActivityLinksSchemaIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityLinksSchemaIriTemplate>;
  }

  // maps a json object with a list of BusinessActivityLinksSchemaIriTemplate-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksSchemaIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<BusinessActivityLinksSchemaIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              BusinessActivityLinksSchemaIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityLinksSchemaIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
