//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static OperationPriority? fromJson(Map<String, dynamic>? json) {
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

  static List<OperationPriority> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationPriority>[];
    }

    return json.fold(<OperationPriority>[],
        (List<OperationPriority> previousValue, element) {
      final OperationPriority? object = OperationPriority.fromJson(element);
      if (object is OperationPriority) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationPriority> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationPriority>{};
    }

    return json.entries.fold(<String, OperationPriority>{},
        (Map<String, OperationPriority> previousValue, element) {
      final OperationPriority? object =
          OperationPriority.fromJson(element.value);
      if (object is OperationPriority) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationPriority-objects as value to a dart map
  static Map<String, List<OperationPriority>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationPriority>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationPriority>>(
          key, OperationPriority.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationPriority[color=$color, id=$id, name=$name, position=$position, type=$type]';

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
