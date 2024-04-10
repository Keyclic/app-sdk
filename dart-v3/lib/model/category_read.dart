//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryRead {
  /// Returns a new [CategoryRead] instance.
  CategoryRead({
    required this.name,
    this.type,
    this.id,
  });

  /// Returns a new [CategoryRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryRead(
      name: json[r'name'],
      type: json[r'type'],
      id: json[r'id'],
    );
  }

  String name;

  final String? type;

  /// The resource identifier.
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryRead &&
        other.name == name &&
        other.type == type &&
        other.id == id;
  }

  @override
  int get hashCode =>
      name.hashCode +
      (type == null ? 0 : type.hashCode) +
      (id == null ? 0 : id.hashCode);

  static List<CategoryRead> listFromJson(List<dynamic>? json) {
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
  String toString() => 'CategoryRead[name=$name, type=$type, id=$id]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'name': name,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'id')) r'id': id,
    };
  }
}
