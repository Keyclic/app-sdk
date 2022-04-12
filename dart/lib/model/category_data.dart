//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CategoryData {
  /// Returns a new [CategoryData] instance.
  CategoryData({
    @required this.name,
    @required this.organization,
    this.parent,
  });

  /// Returns a new [CategoryData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory CategoryData.fromJson(Map<String, dynamic> json) {
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

  String parent;

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
      (name == null ? 0 : name.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (parent == null ? 0 : parent.hashCode);

  static List<CategoryData> listFromJson(List<dynamic> json) {
    return <CategoryData>[
      if (json is List)
        for (dynamic value in json) CategoryData.fromJson(value),
    ];
  }

  static Map<String, CategoryData> mapFromJson(Map<String, dynamic> json) {
    return <String, CategoryData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CategoryData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of CategoryData-objects as value to a dart map
  static Map<String, List<CategoryData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<CategoryData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CategoryData.listFromJson(entry.value),
    };
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
