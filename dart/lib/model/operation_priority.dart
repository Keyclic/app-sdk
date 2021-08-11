part of keyclic_sdk_api.api;

class OperationPriority {
  OperationPriority({
    this.color,
    this.id,
    this.name,
    this.position,
    this.type,
  });

  factory OperationPriority.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationPriority(
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

    return other is OperationPriority &&
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

  static List<OperationPriority> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationPriority.fromJson(value))
            ?.toList() ??
        <OperationPriority>[];
  }

  static Map<String, OperationPriority> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, OperationPriority>((String key, dynamic value) {
          return MapEntry(key, OperationPriority.fromJson(value));
        }) ??
        <String, OperationPriority>{};
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
    return 'OperationPriority[color=$color, id=$id, name=$name, position=$position, type=$type, ]';
  }
}
