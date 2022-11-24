//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportPriority {
  /// Returns a new [ReportPriority] instance.
  ReportPriority({
    this.color,
    this.id,
    this.name,
    this.position,
    this.type,
  });

  /// Returns a new [ReportPriority] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportPriority.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportPriority(
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

    return other is ReportPriority &&
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

  static List<ReportPriority> listFromJson(List<dynamic> json) {
    return <ReportPriority>[
      if (json is List)
        for (dynamic value in json) ReportPriority.fromJson(value),
    ];
  }

  static Map<String, ReportPriority> mapFromJson(Map<String, dynamic> json) {
    return <String, ReportPriority>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportPriority.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportPriority-objects as value to a dart map
  static Map<String, List<ReportPriority>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportPriority>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportPriority.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReportPriority[color=$color, id=$id, name=$name, position=$position, type=$type]';

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
