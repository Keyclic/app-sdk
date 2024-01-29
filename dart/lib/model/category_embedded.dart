//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryEmbedded {
  /// Returns a new [CategoryEmbedded] instance.
  CategoryEmbedded({
    this.children,
    this.path,
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

    return json.fold(<CategoryEmbedded>[],
        (List<CategoryEmbedded> previousValue, element) {
      final CategoryEmbedded? object = CategoryEmbedded.fromJson(element);
      if (object is CategoryEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryEmbedded>{};
    }

    return json.entries.fold(<String, CategoryEmbedded>{},
        (Map<String, CategoryEmbedded> previousValue, element) {
      final CategoryEmbedded? object = CategoryEmbedded.fromJson(element.value);
      if (object is CategoryEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryEmbedded-objects as value to a dart map
  static Map<String, List<CategoryEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryEmbedded>>(
          key, CategoryEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'CategoryEmbedded[children=$children, path=$path]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'children')) r'children': children,
      if (keys == null || keys.contains(r'path')) r'path': path,
    };
  }
}
