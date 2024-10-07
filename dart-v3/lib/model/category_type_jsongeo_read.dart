//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CategoryTypeJsongeoRead {
  /// Returns a new [CategoryTypeJsongeoRead] instance.
  CategoryTypeJsongeoRead({
    required this.id,
    this.description,
    required this.name,
  });

  /// Returns a new [CategoryTypeJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryTypeJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CategoryTypeJsongeoRead(
      id: json[r'id'],
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  /// The resource identifier.
  final String id;

  String? description;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryTypeJsongeoRead &&
        other.id == id &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      id.hashCode +
      (description == null ? 0 : description.hashCode) +
      name.hashCode;

  static List<CategoryTypeJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <CategoryTypeJsongeoRead>[];
    }

    return json.fold(<CategoryTypeJsongeoRead>[],
        (List<CategoryTypeJsongeoRead> previousValue, element) {
      final CategoryTypeJsongeoRead? object =
          CategoryTypeJsongeoRead.fromJson(element);
      if (object is CategoryTypeJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryTypeJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryTypeJsongeoRead>{};
    }

    return json.entries.fold(<String, CategoryTypeJsongeoRead>{},
        (Map<String, CategoryTypeJsongeoRead> previousValue, element) {
      final CategoryTypeJsongeoRead? object =
          CategoryTypeJsongeoRead.fromJson(element.value);
      if (object is CategoryTypeJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryTypeJsongeoRead-objects as value to a dart map
  static Map<String, List<CategoryTypeJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryTypeJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryTypeJsongeoRead>>(
          key, CategoryTypeJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryTypeJsongeoRead[id=$id, description=$description, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'id': id,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
    };
  }
}
