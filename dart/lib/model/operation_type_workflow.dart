//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationTypeWorkflow {
  /// Returns a new [OperationTypeWorkflow] instance.
  OperationTypeWorkflow({
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

  /// Returns a new [OperationTypeWorkflow] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationTypeWorkflow? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationTypeWorkflow(
      createdAt: mapToDateTime(json[r'createdAt']),
      description: json[r'description'],
      end: WorkflowState.fromJson(json[r'end']),
      id: json[r'id'],
      name: json[r'name'],
      start: WorkflowState.fromJson(json[r'start']),
      states: WorkflowState.listFromJson(json[r'states']),
      transitions: WorkflowTransition.listFromJson(json[r'transitions']),
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
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

    return other is OperationTypeWorkflow &&
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

  static List<OperationTypeWorkflow> listFromJson(Iterable? json) {
    if (json == null) {
      return <OperationTypeWorkflow>[];
    }

    return json.fold(<OperationTypeWorkflow>[],
        (List<OperationTypeWorkflow> previousValue, element) {
      final OperationTypeWorkflow? object =
          OperationTypeWorkflow.fromJson(element);
      if (object is OperationTypeWorkflow) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationTypeWorkflow> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationTypeWorkflow>{};
    }

    return json.entries.fold(<String, OperationTypeWorkflow>{},
        (Map<String, OperationTypeWorkflow> previousValue, element) {
      final OperationTypeWorkflow? object =
          OperationTypeWorkflow.fromJson(element.value);
      if (object is OperationTypeWorkflow) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationTypeWorkflow-objects as value to a dart map
  static Map<String, List<OperationTypeWorkflow>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationTypeWorkflow>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationTypeWorkflow>>(
          key, OperationTypeWorkflow.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationTypeWorkflow[createdAt=$createdAt, description=$description, end=$end, id=$id, name=$name, start=$start, states=$states, transitions=$transitions, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.any((key) => RegExp(r'^end\.').hasMatch(key)))
        r'end': end?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^end\.'))) {
            previousValue.add(element.split(RegExp(r'^end\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.any((key) => RegExp(r'^start\.').hasMatch(key)))
        r'start': start?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^start\.'))) {
            previousValue.add(element.split(RegExp(r'^start\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'states')) r'states': states,
      if (keys == null || keys.contains(r'transitions'))
        r'transitions': transitions,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
