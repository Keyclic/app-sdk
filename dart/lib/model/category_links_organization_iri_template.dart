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
  static CategoryLinksOrganizationIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<CategoryLinksOrganizationIriTemplate>[],
        (List<CategoryLinksOrganizationIriTemplate> previousValue, element) {
      final CategoryLinksOrganizationIriTemplate? object =
          CategoryLinksOrganizationIriTemplate.fromJson(element);
      if (object is CategoryLinksOrganizationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksOrganizationIriTemplate>{};
    }

    return json.entries.fold(<String, CategoryLinksOrganizationIriTemplate>{},
        (Map<String, CategoryLinksOrganizationIriTemplate> previousValue,
            element) {
      final CategoryLinksOrganizationIriTemplate? object =
          CategoryLinksOrganizationIriTemplate.fromJson(element.value);
      if (object is CategoryLinksOrganizationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<CategoryLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryLinksOrganizationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryLinksOrganizationIriTemplate>>(
          key, CategoryLinksOrganizationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'CategoryLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
