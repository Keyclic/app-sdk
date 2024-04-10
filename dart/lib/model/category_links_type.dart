//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryLinksType {
  /// Returns a new [CategoryLinksType] instance.
  CategoryLinksType({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [CategoryLinksType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinksType? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryLinksType(
      href: json[r'href'],
      iriTemplate: CategoryLinksTypeIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the type associated to the given category.
  String? href;

  CategoryLinksTypeIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksType &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<CategoryLinksType> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryLinksType>[];
    }

    return json.fold(<CategoryLinksType>[],
        (List<CategoryLinksType> previousValue, element) {
      final CategoryLinksType? object = CategoryLinksType.fromJson(element);
      if (object is CategoryLinksType) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryLinksType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryLinksType>{};
    }

    return json.entries.fold(<String, CategoryLinksType>{},
        (Map<String, CategoryLinksType> previousValue, element) {
      final CategoryLinksType? object =
          CategoryLinksType.fromJson(element.value);
      if (object is CategoryLinksType) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryLinksType-objects as value to a dart map
  static Map<String, List<CategoryLinksType>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryLinksType>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryLinksType>>(
          key, CategoryLinksType.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryLinksType[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
