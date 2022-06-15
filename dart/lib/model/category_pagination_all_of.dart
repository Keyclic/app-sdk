//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryPaginationAllOf {
  /// Returns a new [CategoryPaginationAllOf] instance.
  CategoryPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [CategoryPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryPaginationAllOf(
      embedded: CategoryCollection.fromJson(json[r'_embedded']),
    );
  }

  CategoryCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<CategoryPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryPaginationAllOf>[];
    }
    return json
        .map((value) {
          return CategoryPaginationAllOf.fromJson(value);
        })
        .whereType<CategoryPaginationAllOf>()
        .toList();
  }

  static Map<String, CategoryPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, CategoryPaginationAllOf?>(
            key, CategoryPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CategoryPaginationAllOf>;
  }

  // maps a json object with a list of CategoryPaginationAllOf-objects as value to a dart map
  static Map<String, List<CategoryPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<CategoryPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: CategoryPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'CategoryPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}