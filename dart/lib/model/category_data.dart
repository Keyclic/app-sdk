part of keyclic_sdk_api.api;

class CategoryData {
  CategoryData({
    this.name,
    this.color,
    this.icon,
    this.organization,
    this.parent,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryData(
      name: json['name'],
      color: json['color'],
      icon: json['icon'],
      organization: json['organization'],
      parent: json['parent'],
    );
  }

  String name;

  String color;

  String icon;

  String organization;

  String parent;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryData &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        color == other.color &&
        icon == other.icon &&
        organization == other.organization &&
        parent == other.parent;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= icon?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= parent?.hashCode ?? 0;

    return hashCode;
  }

  static List<CategoryData> listFromJson(List<dynamic> json) {
    return json == null
        ? <CategoryData>[]
        : json.map((dynamic value) => CategoryData.fromJson(value)).toList();
  }

  static Map<String, CategoryData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (organization != null) 'organization': organization,
      if (parent != null) 'parent': parent,
    };
  }

  @override
  String toString() {
    return 'CategoryData[name=$name, color=$color, icon=$icon, organization=$organization, parent=$parent, ]';
  }
}
