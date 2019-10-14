part of keyclic_sdk_api.api;

class CategoryCollection {
  CategoryCollection({
    this.items,
  });

  CategoryCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Category.listFromJson(json['items']);
  }

  List<Category> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Category element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<CategoryCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <CategoryCollection>[]
        : json
            .map((dynamic value) => CategoryCollection.fromJson(value))
            .toList();
  }

  static Map<String, CategoryCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CategoryCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryCollection.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'CategoryCollection[items=$items, ]';
  }
}
