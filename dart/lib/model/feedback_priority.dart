//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackPriority {
  /// Returns a new [FeedbackPriority] instance.
  FeedbackPriority({
    this.color,
    this.id,
    this.name,
    this.position,
    this.type,
  });

  /// Returns a new [FeedbackPriority] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackPriority? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackPriority(
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

    return other is FeedbackPriority &&
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

  static List<FeedbackPriority> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackPriority>[];
    }

    return json.fold(<FeedbackPriority>[],
        (List<FeedbackPriority> previousValue, element) {
      final FeedbackPriority? object = FeedbackPriority.fromJson(element);
      if (object is FeedbackPriority) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackPriority> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackPriority>{};
    }

    return json.entries.fold(<String, FeedbackPriority>{},
        (Map<String, FeedbackPriority> previousValue, element) {
      final FeedbackPriority? object = FeedbackPriority.fromJson(element.value);
      if (object is FeedbackPriority) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackPriority-objects as value to a dart map
  static Map<String, List<FeedbackPriority>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackPriority>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackPriority>>(
          key, FeedbackPriority.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackPriority[color=$color, id=$id, name=$name, position=$position, type=$type]';

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
