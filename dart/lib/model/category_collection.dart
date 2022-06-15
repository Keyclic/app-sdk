//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryCollection {
  /// Returns a new [CategoryCollection] instance.
  CategoryCollection({
    this.items = const [],
  });

  /// Returns a new [CategoryCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryCollection(
      items: Category.listFromJson(json[r'items']),
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

  static List<CategoryCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryCollection>[];
    }
    return json
        .map((value) {
          return CategoryCollection.fromJson(value);
        })
        .whereType<CategoryCollection>()
        .toList();
  }

  static Map<String, CategoryCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, CategoryCollection?>(
        key, CategoryCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CategoryCollection>;
  }

  // maps a json object with a list of CategoryCollection-objects as value to a dart map
  static Map<String, List<CategoryCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<CategoryCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: CategoryCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'CategoryCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
