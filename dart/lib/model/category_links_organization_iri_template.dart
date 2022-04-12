//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CategoryLinksOrganizationIriTemplate {
  /// Returns a new [CategoryLinksOrganizationIriTemplate] instance.
  CategoryLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [CategoryLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory CategoryLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

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
      List<dynamic> json) {
    return <CategoryLinksOrganizationIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          CategoryLinksOrganizationIriTemplate.fromJson(value),
    ];
  }

  static Map<String, CategoryLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, CategoryLinksOrganizationIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CategoryLinksOrganizationIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of CategoryLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<CategoryLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<CategoryLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
