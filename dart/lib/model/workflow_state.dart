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
    this.name,
    this.progression,
    this.reference,
    this.type,
  });

  /// Returns a new [WorkflowState] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowState? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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
      (name == null ? 0 : name.hashCode) +
      (progression == null ? 0 : progression.hashCode) +
      (reference == null ? 0 : reference.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<WorkflowState> listFromJson(Iterable? json) {
    if (json == null) {
      return <WorkflowState>[];
    }

    return json.fold(<WorkflowState>[],
        (List<WorkflowState> previousValue, element) {
      final WorkflowState? object = WorkflowState.fromJson(element);
      if (object is WorkflowState) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowState> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowState>{};
    }

    return json.entries.fold(<String, WorkflowState>{},
        (Map<String, WorkflowState> previousValue, element) {
      final WorkflowState? object = WorkflowState.fromJson(element.value);
      if (object is WorkflowState) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowState-objects as value to a dart map
  static Map<String, List<WorkflowState>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowState>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowState>>(
          key, WorkflowState.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WorkflowState[allowAdd=$allowAdd, allowDispatch=$allowDispatch, backgroundColor=$backgroundColor, color=$color, description=$description, end=$end, id=$id, name=$name, progression=$progression, reference=$reference, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'allowAdd')) r'allowAdd': allowAdd,
      if (keys == null || keys.contains(r'allowDispatch'))
        r'allowDispatch': allowDispatch,
      if (keys == null || keys.contains(r'backgroundColor'))
        r'backgroundColor': backgroundColor,
      if (keys == null || keys.contains(r'color')) r'color': color,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'end')) r'end': end,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'progression'))
        r'progression': progression,
      if (keys == null || keys.contains(r'reference')) r'reference': reference,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
