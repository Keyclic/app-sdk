//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class State {
  /// Returns a new [State] instance.
  State({
    this.id,
    this.type,
    this.name,
    this.description,
    this.color,
    this.progression,
  });

  /// Returns a new [State] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static State? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return State(
      id: json[r'id'],
      type: json[r'type'],
      name: json[r'name'],
      description: json[r'description'],
      color: json[r'color'],
      progression: json[r'progression']?.toDouble(),
    );
  }

  String? id;

  String? type;

  String? name;

  String? description;

  String? color;

  double? progression;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is State &&
        other.id == id &&
        other.type == type &&
        other.name == name &&
        other.description == description &&
        other.color == color &&
        other.progression == progression;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (color == null ? 0 : color.hashCode) +
      (progression == null ? 0 : progression.hashCode);

  static List<State> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <State>[];
    }
    return json
        .map((value) {
          return State.fromJson(value);
        })
        .whereType<State>()
        .toList();
  }

  static Map<String, State> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, State>{};
    }

    final map = json.map(
        (key, value) => MapEntry<String, State?>(key, State.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, State>;
  }

  // maps a json object with a list of State-objects as value to a dart map
  static Map<String, List<State>> mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<State>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: State.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'State[id=$id, type=$type, name=$name, description=$description, color=$color, progression=$progression]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (name != null) r'name': name,
      if (description != null) r'description': description,
      if (color != null) r'color': color,
      if (progression != null) r'progression': progression,
    };
  }
}
