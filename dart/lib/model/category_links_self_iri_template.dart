//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinksSelfIriTemplate {
  /// Returns a new [CategoryLinksSelfIriTemplate] instance.
  CategoryLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [CategoryLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksSelfIriTemplate(
      mapping: CategoryLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<CategoryLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksSelfIriTemplate>[];
    }

    return json.fold(<CategoryLinksSelfIriTemplate>[],
        (List<CategoryLinksSelfIriTemplate> previousValue, element) {
      final CategoryLinksSelfIriTemplate? object =
          CategoryLinksSelfIriTemplate.fromJson(element);
      if (object is CategoryLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, CategoryLinksSelfIriTemplate>{},
        (Map<String, CategoryLinksSelfIriTemplate> previousValue, element) {
      final CategoryLinksSelfIriTemplate? object =
          CategoryLinksSelfIriTemplate.fromJson(element.value);
      if (object is CategoryLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<CategoryLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryLinksSelfIriTemplate>>(
          key, CategoryLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'CategoryLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
