//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryData {
  /// Returns a new [CategoryData] instance.
  CategoryData({
    required this.name,
    required this.organization,
    this.parent,
  });

  /// Returns a new [CategoryData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryData(
      name: json[r'name'],
      organization: json[r'organization'],
      parent: json[r'parent'],
    );
  }

  String name;

  String organization;

  String? parent;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryData &&
        other.name == name &&
        other.organization == organization &&
        other.parent == parent;
  }

  @override
  int get hashCode =>
      name.hashCode +
      organization.hashCode +
      (parent == null ? 0 : parent.hashCode);

  static List<CategoryData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryData>[];
    }

    return json.fold(<CategoryData>[],
        (List<CategoryData> previousValue, element) {
      final CategoryData? object = CategoryData.fromJson(element);
      if (object is CategoryData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CategoryData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryData>{};
    }

    return json.entries.fold(<String, CategoryData>{},
        (Map<String, CategoryData> previousValue, element) {
      final CategoryData? object = CategoryData.fromJson(element.value);
      if (object is CategoryData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CategoryData-objects as value to a dart map
  static Map<String, List<CategoryData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CategoryData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CategoryData>>(
          key, CategoryData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CategoryData[name=$name, organization=$organization, parent=$parent]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'name': name,
      r'organization': organization,
      if (parent != null) r'parent': parent,
    };
  }
}
