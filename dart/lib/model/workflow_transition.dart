//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class WorkflowTransition {
  /// Returns a new [WorkflowTransition] instance.
  WorkflowTransition({
    this.fields = const [],
    this.description,
    this.from,
    this.id,
    this.name,
    this.required_ = const [],
    this.to,
    this.type,
  });

  /// Returns a new [WorkflowTransition] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowTransition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WorkflowTransition(
      fields:
          json[r'fields'] == null ? null : List<String>.from(json[r'fields']),
      description: json[r'description'],
      from: WorkflowState.fromJson(json[r'from']),
      id: json[r'id'],
      name: json[r'name'],
      required_: json[r'required'] == null
          ? null
          : List<String>.from(json[r'required']),
      to: WorkflowState.fromJson(json[r'to']),
      type: json[r'type'],
    );
  }

  List<String>? fields;

  String? description;

  WorkflowState? from;

  final String? id;

  String? name;

  List<String>? required_;

  WorkflowState? to;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowTransition &&
        DeepCollectionEquality.unordered().equals(fields, other.fields) &&
        other.description == description &&
        other.from == from &&
        other.id == id &&
        other.name == name &&
        DeepCollectionEquality.unordered().equals(required_, other.required_) &&
        other.to == to &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (fields == null ? 0 : fields.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (from == null ? 0 : from.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (required_ == null ? 0 : required_.hashCode) +
      (to == null ? 0 : to.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<WorkflowTransition> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <WorkflowTransition>[];
    }

    return json.fold(<WorkflowTransition>[],
        (List<WorkflowTransition> previousValue, element) {
      final WorkflowTransition? object = WorkflowTransition.fromJson(element);
      if (object is WorkflowTransition) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowTransition> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowTransition>{};
    }

    return json.entries.fold(<String, WorkflowTransition>{},
        (Map<String, WorkflowTransition> previousValue, element) {
      final WorkflowTransition? object =
          WorkflowTransition.fromJson(element.value);
      if (object is WorkflowTransition) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowTransition-objects as value to a dart map
  static Map<String, List<WorkflowTransition>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowTransition>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowTransition>>(
          key, WorkflowTransition.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WorkflowTransition[fields=$fields, description=$description, from=$from, id=$id, name=$name, required_=$required_, to=$to, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (fields != null) r'fields': fields,
      if (description != null) r'description': description,
      if (from != null) r'from': from,
      if (id != null) r'id': id,
      if (name != null) r'name': name,
      if (required_ != null) r'required': required_,
      if (to != null) r'to': to,
      if (type != null) r'type': type,
    };
  }
}
