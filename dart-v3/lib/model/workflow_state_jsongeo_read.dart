//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WorkflowStateJsongeoRead {
  /// Returns a new [WorkflowStateJsongeoRead] instance.
  WorkflowStateJsongeoRead({
    this.allowAdd,
    this.allowDispatch,
    this.end,
    this.backgroundColor,
    this.color,
    this.description,
    required this.name,
    this.progression,
    this.reference,
    this.id,
  });

  /// Returns a new [WorkflowStateJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowStateJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return WorkflowStateJsongeoRead(
      allowAdd: json[r'allowAdd'],
      allowDispatch: json[r'allowDispatch'],
      end: json[r'end'],
      backgroundColor: json[r'backgroundColor'],
      color: json[r'color'],
      description: json[r'description'],
      name: json[r'name'],
      progression:
          json[r'progression'] == null ? null : json[r'progression'].toDouble(),
      reference: json[r'reference'],
      id: json[r'id'],
    );
  }

  bool? allowAdd;

  bool? allowDispatch;

  bool? end;

  String? backgroundColor;

  String? color;

  String? description;

  String name;

  num? progression;

  String? reference;

  /// The resource identifier.
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowStateJsongeoRead &&
        other.allowAdd == allowAdd &&
        other.allowDispatch == allowDispatch &&
        other.end == end &&
        other.backgroundColor == backgroundColor &&
        other.color == color &&
        other.description == description &&
        other.name == name &&
        other.progression == progression &&
        other.reference == reference &&
        other.id == id;
  }

  @override
  int get hashCode =>
      (allowAdd == null ? 0 : allowAdd.hashCode) +
      (allowDispatch == null ? 0 : allowDispatch.hashCode) +
      (end == null ? 0 : end.hashCode) +
      (backgroundColor == null ? 0 : backgroundColor.hashCode) +
      (color == null ? 0 : color.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (progression == null ? 0 : progression.hashCode) +
      (reference == null ? 0 : reference.hashCode) +
      (id == null ? 0 : id.hashCode);

  static List<WorkflowStateJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <WorkflowStateJsongeoRead>[];
    }

    return json.fold(<WorkflowStateJsongeoRead>[],
        (List<WorkflowStateJsongeoRead> previousValue, element) {
      final WorkflowStateJsongeoRead? object =
          WorkflowStateJsongeoRead.fromJson(element);
      if (object is WorkflowStateJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowStateJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowStateJsongeoRead>{};
    }

    return json.entries.fold(<String, WorkflowStateJsongeoRead>{},
        (Map<String, WorkflowStateJsongeoRead> previousValue, element) {
      final WorkflowStateJsongeoRead? object =
          WorkflowStateJsongeoRead.fromJson(element.value);
      if (object is WorkflowStateJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowStateJsongeoRead-objects as value to a dart map
  static Map<String, List<WorkflowStateJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowStateJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowStateJsongeoRead>>(
          key, WorkflowStateJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WorkflowStateJsongeoRead[allowAdd=$allowAdd, allowDispatch=$allowDispatch, end=$end, backgroundColor=$backgroundColor, color=$color, description=$description, name=$name, progression=$progression, reference=$reference, id=$id]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'allowAdd')) r'allowAdd': allowAdd,
      if (keys == null || keys.contains(r'allowDispatch'))
        r'allowDispatch': allowDispatch,
      if (keys == null || keys.contains(r'end')) r'end': end,
      if (keys == null || keys.contains(r'backgroundColor'))
        r'backgroundColor': backgroundColor,
      if (keys == null || keys.contains(r'color')) r'color': color,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
      if (keys == null || keys.contains(r'progression'))
        r'progression': progression,
      if (keys == null || keys.contains(r'reference')) r'reference': reference,
      if (keys == null || keys.contains(r'id')) r'id': id,
    };
  }
}
