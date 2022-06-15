//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinksOrganizationIriTemplateMapping {
  /// Returns a new [CategoryLinksOrganizationIriTemplateMapping] instance.
  CategoryLinksOrganizationIriTemplateMapping({
    this.organization,
  });

  /// Returns a new [CategoryLinksOrganizationIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinksOrganizationIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksOrganizationIriTemplateMapping(
      organization: json[r'organization'],
    );
  }

  String? organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksOrganizationIriTemplateMapping &&
        other.organization == organization;
  }

  @override
  int get hashCode => (organization == null ? 0 : organization.hashCode);

  static List<CategoryLinksOrganizationIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksOrganizationIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return CategoryLinksOrganizationIriTemplateMapping.fromJson(value);
        })
        .whereType<CategoryLinksOrganizationIriTemplateMapping>()
        .toList();
  }

  static Map<String, CategoryLinksOrganizationIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksOrganizationIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, CategoryLinksOrganizationIriTemplateMapping?>(
            key, CategoryLinksOrganizationIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CategoryLinksOrganizationIriTemplateMapping>;
  }

  // maps a json object with a list of CategoryLinksOrganizationIriTemplateMapping-objects as value to a dart map
  static Map<String, List<CategoryLinksOrganizationIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<CategoryLinksOrganizationIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: CategoryLinksOrganizationIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'CategoryLinksOrganizationIriTemplateMapping[organization=$organization]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (organization != null) r'organization': organization,
    };
  }
}
