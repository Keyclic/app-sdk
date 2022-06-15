//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class WorkflowState {
  /// Returns a new [WorkflowState] instance.
  WorkflowState({
    this.allowAdd,
    this.allowDispatch,
    this.backgroundColor,
    this.color,
    this.description,
    this.end,
    this.id,
    this.key,
    this.name,
    this.progression,
    this.reference,
    this.type,
  });

  /// Returns a new [WorkflowState] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WorkflowState(
      allowAdd: json[r'allowAdd'],
      allowDispatch: json[r'allowDispatch'],
      backgroundColor: json[r'backgroundColor'],
      color: json[r'color'],
      description: json[r'description'],
      end: json[r'end'],
      id: json[r'id'],
      key: json[r'key'],
      name: json[r'name'],
      progression: json[r'progression']?.toDouble(),
      reference: json[r'reference'],
      type: json[r'type'],
    );
  }

  bool? allowAdd;

  bool? allowDispatch;

  String? backgroundColor;

  String? color;

  String? description;

  bool? end;

  final String? id;

  String? key;

  String? name;

  double? progression;

  String? reference;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowState &&
        other.allowAdd == allowAdd &&
        other.allowDispatch == allowDispatch &&
        other.backgroundColor == backgroundColor &&
        other.color == color &&
        other.description == description &&
        other.end == end &&
        other.id == id &&
        other.key == key &&
        other.name == name &&
        other.progression == progression &&
        other.reference == reference &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (allowAdd == null ? 0 : allowAdd.hashCode) +
      (allowDispatch == null ? 0 : allowDispatch.hashCode) +
      (backgroundColor == null ? 0 : backgroundColor.hashCode) +
      (color == null ? 0 : color.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (end == null ? 0 : end.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (key == null ? 0 : key.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (progression == null ? 0 : progression.hashCode) +
      (reference == null ? 0 : reference.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<WorkflowState> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <WorkflowState>[];
    }
    return json
        .map((value) {
          return WorkflowState.fromJson(value);
        })
        .whereType<WorkflowState>()
        .toList();
  }

  static Map<String, WorkflowState> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowState>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, WorkflowState?>(key, WorkflowState.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, WorkflowState>;
  }

  // maps a json object with a list of WorkflowState-objects as value to a dart map
  static Map<String, List<WorkflowState>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<WorkflowState>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: WorkflowState.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'WorkflowState[allowAdd=$allowAdd, allowDispatch=$allowDispatch, backgroundColor=$backgroundColor, color=$color, description=$description, end=$end, id=$id, key=$key, name=$name, progression=$progression, reference=$reference, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (allowAdd != null) r'allowAdd': allowAdd,
      if (allowDispatch != null) r'allowDispatch': allowDispatch,
      if (backgroundColor != null) r'backgroundColor': backgroundColor,
      if (color != null) r'color': color,
      if (description != null) r'description': description,
      if (end != null) r'end': end,
      if (id != null) r'id': id,
      if (key != null) r'key': key,
      if (name != null) r'name': name,
      if (progression != null) r'progression': progression,
      if (reference != null) r'reference': reference,
      if (type != null) r'type': type,
    };
  }
}
