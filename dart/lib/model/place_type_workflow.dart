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
    this.states = const [],
    this.transitions = const [],
    this.type,
    this.updatedAt,
  });

  /// Returns a new [PlaceTypeWorkflow] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceTypeWorkflow? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return PlaceTypeWorkflow(
      createdAt: createdAt,
      description: json[r'description'],
      end: WorkflowState.fromJson(json[r'end']),
      id: json[r'id'],
      name: json[r'name'],
      start: WorkflowState.fromJson(json[r'start']),
      states: WorkflowState.listFromJson(json[r'states']),
      transitions: WorkflowTransition.listFromJson(json[r'transitions']),
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

  static List<PlaceTypeWorkflow> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceTypeWorkflow>[];
    }
    return json
        .map((value) {
          return PlaceTypeWorkflow.fromJson(value);
        })
        .whereType<PlaceTypeWorkflow>()
        .toList();
  }

  static Map<String, PlaceTypeWorkflow> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceTypeWorkflow>{};
    }

    final map = json.map((key, value) => MapEntry<String, PlaceTypeWorkflow?>(
        key, PlaceTypeWorkflow.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlaceTypeWorkflow>;
  }

  // maps a json object with a list of PlaceTypeWorkflow-objects as value to a dart map
  static Map<String, List<PlaceTypeWorkflow>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlaceTypeWorkflow>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlaceTypeWorkflow.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlaceTypeWorkflow[createdAt=$createdAt, description=$description, end=$end, id=$id, name=$name, start=$start, states=$states, transitions=$transitions, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (end != null) r'end': end,
      if (id != null) r'id': id,
      if (name != null) r'name': name,
      if (start != null) r'start': start,
      if (states != null) r'states': states,
      if (transitions != null) r'transitions': transitions,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
