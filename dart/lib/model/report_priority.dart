//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static ReportPriority? fromJson(Map<String, dynamic>? json) {
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

  static List<ReportPriority> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ReportPriority>[];
    }

    return json.fold(<ReportPriority>[],
        (List<ReportPriority> previousValue, element) {
      final ReportPriority? object = ReportPriority.fromJson(element);
      if (object is ReportPriority) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportPriority> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportPriority>{};
    }

    return json.entries.fold(<String, ReportPriority>{},
        (Map<String, ReportPriority> previousValue, element) {
      final ReportPriority? object = ReportPriority.fromJson(element.value);
      if (object is ReportPriority) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportPriority-objects as value to a dart map
  static Map<String, List<ReportPriority>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportPriority>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportPriority>>(
          key, ReportPriority.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportPriority[color=$color, id=$id, name=$name, position=$position, type=$type]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && color != null) ||
          (keys?.contains(r'color') ?? false))
        r'color': color,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && position != null) ||
          (keys?.contains(r'position') ?? false))
        r'position': position,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
    };
  }
}
