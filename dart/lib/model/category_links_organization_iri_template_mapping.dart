//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CategoryLinksOrganizationIriTemplateMapping {
  /// Returns a new [CategoryLinksOrganizationIriTemplateMapping] instance.
  CategoryLinksOrganizationIriTemplateMapping({
    this.organization,
  });

  /// Returns a new [CategoryLinksOrganizationIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory CategoryLinksOrganizationIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksOrganizationIriTemplateMapping(
      organization: json[r'organization'],
    );
  }

  String organization;

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
      List<dynamic> json) {
    return <CategoryLinksOrganizationIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          CategoryLinksOrganizationIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, CategoryLinksOrganizationIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, CategoryLinksOrganizationIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              CategoryLinksOrganizationIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of CategoryLinksOrganizationIriTemplateMapping-objects as value to a dart map
  static Map<String, List<CategoryLinksOrganizationIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<CategoryLinksOrganizationIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
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
