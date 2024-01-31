//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryEmbeddedType {
  /// Returns a new [CategoryEmbeddedType] instance.
  CategoryEmbeddedType({
    this.description,
    this.name,
  });

  /// Returns a new [CategoryEmbeddedType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryEmbeddedType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryEmbeddedType(
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  String? description;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryEmbeddedType &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<CategoryEmbeddedType> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryEmbeddedType>[];
    }

    return json.fold(<CategoryEmbeddedType>[],
        (List<CategoryEmbeddedType> previousValue, element) {
      final CategoryEmbeddedType? object =
          CategoryEmbeddedType.fromJson(element);
      if (object is CategoryEmbeddedType) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryEmbeddedType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryEmbeddedType>{};
    }

    return json.entries.fold(<String, CategoryEmbeddedType>{},
        (Map<String, CategoryEmbeddedType> previousValue, element) {
      final CategoryEmbeddedType? object =
          CategoryEmbeddedType.fromJson(element.value);
      if (object is CategoryEmbeddedType) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryEmbeddedType-objects as value to a dart map
  static Map<String, List<CategoryEmbeddedType>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryEmbeddedType>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryEmbeddedType>>(
          key, CategoryEmbeddedType.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryEmbeddedType[description=$description, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
