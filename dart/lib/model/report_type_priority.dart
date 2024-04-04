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
  static ReportTypePriority? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<ReportTypePriority>[],
        (List<ReportTypePriority> previousValue, element) {
      final ReportTypePriority? object = ReportTypePriority.fromJson(element);
      if (object is ReportTypePriority) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportTypePriority> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportTypePriority>{};
    }

    return json.entries.fold(<String, ReportTypePriority>{},
        (Map<String, ReportTypePriority> previousValue, element) {
      final ReportTypePriority? object =
          ReportTypePriority.fromJson(element.value);
      if (object is ReportTypePriority) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportTypePriority-objects as value to a dart map
  static Map<String, List<ReportTypePriority>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportTypePriority>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportTypePriority>>(
          key, ReportTypePriority.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportTypePriority[color=$color, id=$id, name=$name, position=$position, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'color')) r'color': color,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'position')) r'position': position,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
