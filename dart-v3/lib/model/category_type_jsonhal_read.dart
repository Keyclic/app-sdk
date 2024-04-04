//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryTypeJsonhalRead {
  /// Returns a new [CategoryTypeJsonhalRead] instance.
  CategoryTypeJsonhalRead({
    this.links,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
  });

  /// Returns a new [CategoryTypeJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryTypeJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return CategoryTypeJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? description;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryTypeJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode;

  static List<CategoryTypeJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryTypeJsonhalRead>[];
    }

    return json.fold(<CategoryTypeJsonhalRead>[],
        (List<CategoryTypeJsonhalRead> previousValue, element) {
      final CategoryTypeJsonhalRead? object =
          CategoryTypeJsonhalRead.fromJson(element);
      if (object is CategoryTypeJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryTypeJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryTypeJsonhalRead>{};
    }

    return json.entries.fold(<String, CategoryTypeJsonhalRead>{},
        (Map<String, CategoryTypeJsonhalRead> previousValue, element) {
      final CategoryTypeJsonhalRead? object =
          CategoryTypeJsonhalRead.fromJson(element.value);
      if (object is CategoryTypeJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryTypeJsonhalRead-objects as value to a dart map
  static Map<String, List<CategoryTypeJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryTypeJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryTypeJsonhalRead>>(
          key, CategoryTypeJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryTypeJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name]';

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
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
    };
  }
}
