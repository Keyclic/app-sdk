//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryRead {
  /// Returns a new [CategoryRead] instance.
  CategoryRead({
    required this.name,
    this.organization,
    this.type,
    this.id,
    this.identificationNumber,
    this.path,
    this.createdAt,
    this.updatedAt,
    this.children,
  });

  /// Returns a new [CategoryRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryRead(
      name: json[r'name'],
      organization: json[r'organization'],
      type: CategoryTypeRead.fromJson(json[r'type']),
      id: json[r'id'],
      identificationNumber: json[r'identificationNumber'],
      path: NodeRead.listFromJson(json[r'path']),
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      children: CategoryRead.listFromJson(json[r'children']),
    );
  }

  String name;

  final String? organization;

  CategoryTypeRead? type;

  /// The resource identifier.
  final String? id;

  String? identificationNumber;

  final List<NodeRead>? path;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final List<CategoryRead>? children;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryRead &&
        other.name == name &&
        other.organization == organization &&
        other.type == type &&
        other.id == id &&
        other.identificationNumber == identificationNumber &&
        DeepCollectionEquality.unordered().equals(path, other.path) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        DeepCollectionEquality.unordered().equals(children, other.children);
  }

  @override
  int get hashCode =>
      name.hashCode +
      (organization == null ? 0 : organization.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      (path == null ? 0 : path.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (children == null ? 0 : children.hashCode);

  static List<CategoryRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <CategoryRead>[];
    }

    return json.fold(<CategoryRead>[],
        (List<CategoryRead> previousValue, element) {
      final CategoryRead? object = CategoryRead.fromJson(element);
      if (object is CategoryRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryRead>{};
    }

    return json.entries.fold(<String, CategoryRead>{},
        (Map<String, CategoryRead> previousValue, element) {
      final CategoryRead? object = CategoryRead.fromJson(element.value);
      if (object is CategoryRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryRead-objects as value to a dart map
  static Map<String, List<CategoryRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryRead>>(
          key, CategoryRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryRead[name=$name, organization=$organization, type=$type, id=$id, identificationNumber=$identificationNumber, path=$path, createdAt=$createdAt, updatedAt=$updatedAt, children=$children]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'name': name,
      if (keys == null || keys.contains(r'organization'))
        r'organization': organization,
      if (keys == null || keys.any((key) => RegExp(r'^type\.').hasMatch(key)))
        r'type': type?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^type\.'))) {
            previousValue.add(element.split(RegExp(r'^type\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'identificationNumber'))
        r'identificationNumber': identificationNumber,
      if (keys == null || keys.contains(r'path')) r'path': path,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'children')) r'children': children,
    };
  }
}
