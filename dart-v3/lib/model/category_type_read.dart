//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryTypeRead {
  /// Returns a new [CategoryTypeRead] instance.
  CategoryTypeRead({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
  });

  /// Returns a new [CategoryTypeRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryTypeRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

    return CategoryTypeRead(
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: json[r'description'],
      name: json[r'name'],
    );
  }

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

    return other is CategoryTypeRead &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode;

  static List<CategoryTypeRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryTypeRead>[];
    }

    return json.fold(<CategoryTypeRead>[],
        (List<CategoryTypeRead> previousValue, element) {
      final CategoryTypeRead? object = CategoryTypeRead.fromJson(element);
      if (object is CategoryTypeRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryTypeRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryTypeRead>{};
    }

    return json.entries.fold(<String, CategoryTypeRead>{},
        (Map<String, CategoryTypeRead> previousValue, element) {
      final CategoryTypeRead? object = CategoryTypeRead.fromJson(element.value);
      if (object is CategoryTypeRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryTypeRead-objects as value to a dart map
  static Map<String, List<CategoryTypeRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryTypeRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryTypeRead>>(
          key, CategoryTypeRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryTypeRead[id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
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
