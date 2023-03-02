//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CategoryLinksSelfIriTemplateMapping {
  /// Returns a new [CategoryLinksSelfIriTemplateMapping] instance.
  CategoryLinksSelfIriTemplateMapping({
    this.category,
  });

  /// Returns a new [CategoryLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory CategoryLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksSelfIriTemplateMapping(
      category: json[r'category'],
    );
  }

  String category;

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
      List<dynamic> json) {
    return <CategoryLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          CategoryLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, CategoryLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, CategoryLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CategoryLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of CategoryLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<CategoryLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<CategoryLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              CategoryLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'CategoryLinksSelfIriTemplateMapping[category=$category]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (category != null) r'category': category,
    };
  }
}
