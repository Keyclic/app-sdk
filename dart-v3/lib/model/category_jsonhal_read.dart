//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryJsonhalRead {
  /// Returns a new [CategoryJsonhalRead] instance.
  CategoryJsonhalRead({
    this.links,
    required this.name,
    this.id,
    this.path,
  });

  /// Returns a new [CategoryJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryJsonhalRead(
      links: CategoryJsonhalReadLinks.fromJson(json[r'_links']),
      name: json[r'name'],
      id: json[r'id'],
      path: NodeJsonhalRead.listFromJson(json[r'path']),
    );
  }

  CategoryJsonhalReadLinks? links;

  String name;

  /// The resource identifier.
  final String? id;

  final List<NodeJsonhalRead>? path;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryJsonhalRead &&
        other.links == links &&
        other.name == name &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(path, other.path);
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      name.hashCode +
      (id == null ? 0 : id.hashCode) +
      (path == null ? 0 : path.hashCode);

  static List<CategoryJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <CategoryJsonhalRead>[];
    }

    return json.fold(<CategoryJsonhalRead>[],
        (List<CategoryJsonhalRead> previousValue, element) {
      final CategoryJsonhalRead? object = CategoryJsonhalRead.fromJson(element);
      if (object is CategoryJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryJsonhalRead>{};
    }

    return json.entries.fold(<String, CategoryJsonhalRead>{},
        (Map<String, CategoryJsonhalRead> previousValue, element) {
      final CategoryJsonhalRead? object =
          CategoryJsonhalRead.fromJson(element.value);
      if (object is CategoryJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryJsonhalRead-objects as value to a dart map
  static Map<String, List<CategoryJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryJsonhalRead>>(
          key, CategoryJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryJsonhalRead[links=$links, name=$name, id=$id, path=$path]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      r'name': name,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'path')) r'path': path,
    };
  }
}
