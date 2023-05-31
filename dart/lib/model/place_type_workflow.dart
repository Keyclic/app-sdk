//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceTypeWorkflow {
  /// Returns a new [PlaceTypeWorkflow] instance.
  PlaceTypeWorkflow({
    this.createdAt,
    this.description,
    this.end,
    this.id,
    this.name,
    this.start,
    this.states,
    this.transitions,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [PlaceTypeWorkflow] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceTypeWorkflow? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return PlaceTypeWorkflow(
      createdAt: createdAt,
      description: json[r'description'],
      end: json[r'end'] is! Map ? null : WorkflowState.fromJson(json[r'end']),
      id: json[r'id'],
      name: json[r'name'],
      start: json[r'start'] is! Map
          ? null
          : WorkflowState.fromJson(json[r'start']),
      states: json[r'states'] is! Iterable
          ? null
          : WorkflowState.listFromJson(json[r'states']),
      transitions: json[r'transitions'] is! Iterable
          ? null
          : WorkflowTransition.listFromJson(json[r'transitions']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  final DateTime? createdAt;

  String? description;

  WorkflowState? end;

  final String? id;

  String? name;

  WorkflowState? start;

  List<WorkflowState>? states;

  List<WorkflowTransition>? transitions;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceTypeWorkflow &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.end == end &&
        other.id == id &&
        other.name == name &&
        other.start == start &&
        DeepCollectionEquality.unordered().equals(states, other.states) &&
        DeepCollectionEquality.unordered()
            .equals(transitions, other.transitions) &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (end == null ? 0 : end.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (start == null ? 0 : start.hashCode) +
      (states == null ? 0 : states.hashCode) +
      (transitions == null ? 0 : transitions.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<PlaceTypeWorkflow> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PlaceTypeWorkflow>[];
    }

    return json.fold(<PlaceTypeWorkflow>[],
        (List<PlaceTypeWorkflow> previousValue, element) {
      final PlaceTypeWorkflow? object = PlaceTypeWorkflow.fromJson(element);
      if (object is PlaceTypeWorkflow) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceTypeWorkflow> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceTypeWorkflow>{};
    }

    return json.entries.fold(<String, PlaceTypeWorkflow>{},
        (Map<String, PlaceTypeWorkflow> previousValue, element) {
      final PlaceTypeWorkflow? object =
          PlaceTypeWorkflow.fromJson(element.value);
      if (object is PlaceTypeWorkflow) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceTypeWorkflow-objects as value to a dart map
  static Map<String, List<PlaceTypeWorkflow>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceTypeWorkflow>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceTypeWorkflow>>(
          key, PlaceTypeWorkflow.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceTypeWorkflow[createdAt=$createdAt, description=$description, end=$end, id=$id, name=$name, start=$start, states=$states, transitions=$transitions, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && end != null) || (keys?.contains(r'end') ?? false))
        r'end': end?.toJson(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && start != null) ||
          (keys?.contains(r'start') ?? false))
        r'start': start?.toJson(),
      if ((keys == null && states != null) ||
          (keys?.contains(r'states') ?? false))
        r'states': states,
      if ((keys == null && transitions != null) ||
          (keys?.contains(r'transitions') ?? false))
        r'transitions': transitions,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
