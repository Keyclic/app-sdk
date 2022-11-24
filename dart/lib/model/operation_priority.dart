//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationPriority {
  /// Returns a new [OperationPriority] instance.
  OperationPriority({
    this.color,
    this.id,
    this.name,
    this.position,
    this.type,
  });

  /// Returns a new [OperationPriority] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationPriority.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationPriority(
      color: json[r'color'],
      id: json[r'id'],
      name: json[r'name'],
      position: json[r'position'],
      type: json[r'type'],
    );
  }

  String color;

  String id;

  String name;

  int position;

  String type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationPriority &&
        other.color == color &&
        other.id == id &&
        other.name == name &&
        other.position == position &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (color == null ? 0 : color.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (position == null ? 0 : position.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<OperationPriority> listFromJson(List<dynamic> json) {
    return <OperationPriority>[
      if (json is List)
        for (dynamic value in json) OperationPriority.fromJson(value),
    ];
  }

  static Map<String, OperationPriority> mapFromJson(Map<String, dynamic> json) {
    return <String, OperationPriority>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationPriority.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationPriority-objects as value to a dart map
  static Map<String, List<OperationPriority>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationPriority>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationPriority.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationPriority[color=$color, id=$id, name=$name, position=$position, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (color != null) r'color': color,
      if (id != null) r'id': id,
      if (name != null) r'name': name,
      if (position != null) r'position': position,
      if (type != null) r'type': type,
    };
  }
}
