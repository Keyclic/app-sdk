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
  static CategoryLinksOrganizationIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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
      Iterable? json) {
    if (json == null) {
      return <CategoryLinksOrganizationIriTemplateMapping>[];
    }

    return json.fold(<CategoryLinksOrganizationIriTemplateMapping>[],
        (List<CategoryLinksOrganizationIriTemplateMapping> previousValue,
            element) {
      final CategoryLinksOrganizationIriTemplateMapping? object =
          CategoryLinksOrganizationIriTemplateMapping.fromJson(element);
      if (object is CategoryLinksOrganizationIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryLinksOrganizationIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksOrganizationIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, CategoryLinksOrganizationIriTemplateMapping>{},
        (Map<String, CategoryLinksOrganizationIriTemplateMapping> previousValue,
            element) {
      final CategoryLinksOrganizationIriTemplateMapping? object =
          CategoryLinksOrganizationIriTemplateMapping.fromJson(element.value);
      if (object is CategoryLinksOrganizationIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryLinksOrganizationIriTemplateMapping-objects as value to a dart map
  static Map<String, List<CategoryLinksOrganizationIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryLinksOrganizationIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<CategoryLinksOrganizationIriTemplateMapping>>(
          key, CategoryLinksOrganizationIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryLinksOrganizationIriTemplateMapping[organization=$organization]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'organization'))
        r'organization': organization,
    };
  }
}
