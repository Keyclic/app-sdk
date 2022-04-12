//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryEmbedded {
  /// Returns a new [CategoryEmbedded] instance.
  CategoryEmbedded({
    this.children = const [],
    this.path = const [],
  });

  /// Returns a new [CategoryEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryEmbedded(
      children: Category.listFromJson(json[r'children']),
      path: NodePath.listFromJson(json[r'path']),
    );
  }

  List<Category>? children;

  List<NodePath>? path;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryEmbedded &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        DeepCollectionEquality.unordered().equals(path, other.path);
  }

  @override
  int get hashCode =>
      (children == null ? 0 : children.hashCode) +
      (path == null ? 0 : path.hashCode);

  static List<CategoryEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryEmbedded>[];
    }
    return json
        .map((value) {
          return CategoryEmbedded.fromJson(value);
        })
        .whereType<CategoryEmbedded>()
        .toList();
  }

  static Map<String, CategoryEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryEmbedded>{};
    }

    final map = json.map((key, value) => MapEntry<String, CategoryEmbedded?>(
        key, CategoryEmbedded.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CategoryEmbedded>;
  }

  // maps a json object with a list of CategoryEmbedded-objects as value to a dart map
  static Map<String, List<CategoryEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<CategoryEmbedded>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: CategoryEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'CategoryEmbedded[children=$children, path=$path]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (children != null) r'children': children,
      if (path != null) r'path': path,
    };
  }
}
