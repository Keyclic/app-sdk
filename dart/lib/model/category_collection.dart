//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryCollection {
  /// Returns a new [CategoryCollection] instance.
  CategoryCollection({
    this.items,
  });

  /// Returns a new [CategoryCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryCollection(
      items: json[r'items'] is! Iterable
          ? null
          : Category.listFromJson(json[r'items']),
    );
  }

  List<Category>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<CategoryCollection> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <CategoryCollection>[];
    }

    return json.fold(<CategoryCollection>[],
        (List<CategoryCollection> previousValue, element) {
      final CategoryCollection? object = CategoryCollection.fromJson(element);
      if (object is CategoryCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryCollection>{};
    }

    return json.entries.fold(<String, CategoryCollection>{},
        (Map<String, CategoryCollection> previousValue, element) {
      final CategoryCollection? object =
          CategoryCollection.fromJson(element.value);
      if (object is CategoryCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryCollection-objects as value to a dart map
  static Map<String, List<CategoryCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryCollection>>(
          key, CategoryCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'CategoryCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
