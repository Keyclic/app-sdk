//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinksSelfIriTemplateMapping {
  /// Returns a new [CategoryLinksSelfIriTemplateMapping] instance.
  CategoryLinksSelfIriTemplateMapping({
    this.category,
  });

  /// Returns a new [CategoryLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksSelfIriTemplateMapping(
      category: json[r'category'],
    );
  }

  String? category;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksSelfIriTemplateMapping &&
        other.category == category;
  }

  @override
  int get hashCode => (category == null ? 0 : category.hashCode);

  static List<CategoryLinksSelfIriTemplateMapping> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<CategoryLinksSelfIriTemplateMapping>[],
        (List<CategoryLinksSelfIriTemplateMapping> previousValue, element) {
      final CategoryLinksSelfIriTemplateMapping? object =
          CategoryLinksSelfIriTemplateMapping.fromJson(element);
      if (object is CategoryLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, CategoryLinksSelfIriTemplateMapping>{},
        (Map<String, CategoryLinksSelfIriTemplateMapping> previousValue,
            element) {
      final CategoryLinksSelfIriTemplateMapping? object =
          CategoryLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is CategoryLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<CategoryLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryLinksSelfIriTemplateMapping>>(
          key, CategoryLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryLinksSelfIriTemplateMapping[category=$category]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && category != null) ||
          (keys?.contains(r'category') ?? false))
        r'category': category,
    };
  }
}
