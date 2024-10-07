//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryJsongeoRead {
  /// Returns a new [CategoryJsongeoRead] instance.
  CategoryJsongeoRead({
    required this.name,
    required this.organization,
    this.type,
    required this.id,
    this.path = const [],
  });

  /// Returns a new [CategoryJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryJsongeoRead(
      name: json[r'name'],
      organization: json[r'organization'],
      type: CategoryTypeJsongeoRead.fromJson(json[r'type']),
      id: json[r'id'],
      path: NodeJsongeoRead.listFromJson(json[r'path']),
    );
  }

  String name;

  final String organization;

  CategoryTypeJsongeoRead? type;

  /// The resource identifier.
  final String id;

  final List<NodeJsongeoRead> path;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryJsongeoRead &&
        other.name == name &&
        other.organization == organization &&
        other.type == type &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(path, other.path);
  }

  @override
  int get hashCode =>
      name.hashCode +
      organization.hashCode +
      (type == null ? 0 : type.hashCode) +
      id.hashCode +
      path.hashCode;

  static List<CategoryJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <CategoryJsongeoRead>[];
    }

    return json.fold(<CategoryJsongeoRead>[],
        (List<CategoryJsongeoRead> previousValue, element) {
      final CategoryJsongeoRead? object = CategoryJsongeoRead.fromJson(element);
      if (object is CategoryJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryJsongeoRead>{};
    }

    return json.entries.fold(<String, CategoryJsongeoRead>{},
        (Map<String, CategoryJsongeoRead> previousValue, element) {
      final CategoryJsongeoRead? object =
          CategoryJsongeoRead.fromJson(element.value);
      if (object is CategoryJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryJsongeoRead-objects as value to a dart map
  static Map<String, List<CategoryJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryJsongeoRead>>(
          key, CategoryJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryJsongeoRead[name=$name, organization=$organization, type=$type, id=$id, path=$path]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'name': name,
      r'organization': organization,
      if (keys == null || keys.any((key) => RegExp(r'^type\.').hasMatch(key)))
        r'type': type?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^type\.'))) {
            previousValue.add(element.split(RegExp(r'^type\.')).last);
          }

          return previousValue;
        })),
      r'id': id,
      r'path': path,
    };
  }
}
