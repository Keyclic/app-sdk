//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinksSelf {
  /// Returns a new [CategoryLinksSelf] instance.
  CategoryLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [CategoryLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksSelf(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : CategoryLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given category.
  String? href;

  CategoryLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<CategoryLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksSelf>[];
    }

    return json.fold(<CategoryLinksSelf>[],
        (List<CategoryLinksSelf> previousValue, element) {
      final CategoryLinksSelf? object = CategoryLinksSelf.fromJson(element);
      if (object is CategoryLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksSelf>{};
    }

    return json.entries.fold(<String, CategoryLinksSelf>{},
        (Map<String, CategoryLinksSelf> previousValue, element) {
      final CategoryLinksSelf? object =
          CategoryLinksSelf.fromJson(element.value);
      if (object is CategoryLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryLinksSelf-objects as value to a dart map
  static Map<String, List<CategoryLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryLinksSelf>>(
          key, CategoryLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
