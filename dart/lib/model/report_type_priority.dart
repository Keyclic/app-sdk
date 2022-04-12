//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportTypePriority {
  /// Returns a new [ReportTypePriority] instance.
  ReportTypePriority({
    this.color,
    this.id,
    this.name,
    this.position,
    this.type,
  });

  /// Returns a new [ReportTypePriority] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportTypePriority? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportTypePriority(
      color: json[r'color'],
      id: json[r'id'],
      name: json[r'name'],
      position: json[r'position'],
      type: json[r'type'],
    );
  }

  String? color;

  final String? id;

  String? name;

  int? position;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportTypePriority &&
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

  static List<ReportTypePriority> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportTypePriority>[];
    }
    return json
        .map((value) {
          return ReportTypePriority.fromJson(value);
        })
        .whereType<ReportTypePriority>()
        .toList();
  }

  static Map<String, ReportTypePriority> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportTypePriority>{};
    }

    final map = json.map((key, value) => MapEntry<String, ReportTypePriority?>(
        key, ReportTypePriority.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReportTypePriority>;
  }

  // maps a json object with a list of ReportTypePriority-objects as value to a dart map
  static Map<String, List<ReportTypePriority>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReportTypePriority>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReportTypePriority.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReportTypePriority[color=$color, id=$id, name=$name, position=$position, type=$type]';

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
