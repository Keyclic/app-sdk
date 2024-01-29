//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WorkflowStateRead {
  /// Returns a new [WorkflowStateRead] instance.
  WorkflowStateRead({
    this.color,
    required this.name,
    this.id,
  });

  /// Returns a new [WorkflowStateRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowStateRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WorkflowStateRead(
      color: json[r'color'],
      name: json[r'name'],
      id: json[r'id'],
    );
  }

  String? color;

  String name;

  /// The resource identifier.
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowStateRead &&
        other.color == color &&
        other.name == name &&
        other.id == id;
  }

  @override
  int get hashCode =>
      (color == null ? 0 : color.hashCode) +
      name.hashCode +
      (id == null ? 0 : id.hashCode);

  static List<WorkflowStateRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <WorkflowStateRead>[];
    }

    return json.fold(<WorkflowStateRead>[],
        (List<WorkflowStateRead> previousValue, element) {
      final WorkflowStateRead? object = WorkflowStateRead.fromJson(element);
      if (object is WorkflowStateRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowStateRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowStateRead>{};
    }

    return json.entries.fold(<String, WorkflowStateRead>{},
        (Map<String, WorkflowStateRead> previousValue, element) {
      final WorkflowStateRead? object =
          WorkflowStateRead.fromJson(element.value);
      if (object is WorkflowStateRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowStateRead-objects as value to a dart map
  static Map<String, List<WorkflowStateRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowStateRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowStateRead>>(
          key, WorkflowStateRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'WorkflowStateRead[color=$color, name=$name, id=$id]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'color')) r'color': color,
      r'name': name,
      if (keys == null || keys.contains(r'id')) r'id': id,
    };
  }
}
