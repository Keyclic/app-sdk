//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinksOrganizationIriTemplate {
  /// Returns a new [CategoryLinksOrganizationIriTemplate] instance.
  CategoryLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [CategoryLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinksOrganizationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<CategoryLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksOrganizationIriTemplate>[];
    }
    return json
        .map((value) {
          return CategoryLinksOrganizationIriTemplate.fromJson(value);
        })
        .whereType<CategoryLinksOrganizationIriTemplate>()
        .toList();
  }

  static Map<String, CategoryLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksOrganizationIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, CategoryLinksOrganizationIriTemplate?>(
            key, CategoryLinksOrganizationIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CategoryLinksOrganizationIriTemplate>;
  }

  // maps a json object with a list of CategoryLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<CategoryLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<CategoryLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              CategoryLinksOrganizationIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'CategoryLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
