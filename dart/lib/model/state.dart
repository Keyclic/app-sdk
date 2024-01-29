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

    return json.fold(<State>[], (List<State> previousValue, element) {
      final State? object = State.fromJson(element);
      if (object is State) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, State> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, State>{};
    }

    return json.entries.fold(<String, State>{},
        (Map<String, State> previousValue, element) {
      final State? object = State.fromJson(element.value);
      if (object is State) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of State-objects as value to a dart map
  static Map<String, List<State>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<State>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<State>>(key, State.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'State[id=$id, type=$type, name=$name, description=$description, color=$color, progression=$progression]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'color')) r'color': color,
      if (keys == null || keys.contains(r'progression'))
        r'progression': progression,
    };
  }
}
