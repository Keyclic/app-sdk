part of keyclic_sdk_api.api;

class TaskPriority {
  TaskPriority({
    this.color,
    this.id,
    this.name,
    this.position,
    this.type,
  });

  factory TaskPriority.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TaskPriority(
      color: json['color'],
      id: json['id'],
      name: json['name'],
      position: json['position'],
      type: json['type'],
    );
  }

  String color;

  String id;

  String name;

  int position;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TaskPriority &&
        runtimeType == other.runtimeType &&
        color == other.color &&
        id == other.id &&
        name == other.name &&
        position == other.position &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= position?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<TaskPriority> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => TaskPriority.fromJson(value))
            ?.toList() ??
        <TaskPriority>[];
  }

  static Map<String, TaskPriority> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, TaskPriority>((String key, dynamic value) {
          return MapEntry(key, TaskPriority.fromJson(value));
        }) ??
        <String, TaskPriority>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (color != null) 'color': color,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (position != null) 'position': position,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'TaskPriority[color=$color, id=$id, name=$name, position=$position, type=$type, ]';
  }
}
