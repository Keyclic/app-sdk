//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WorkflowTransitionRead {
  /// Returns a new [WorkflowTransitionRead] instance.
  WorkflowTransitionRead({
    this.description,
    this.fields,
    this.from,
    required this.name,
    this.required_,
    this.to,
    this.id,
  });

  /// Returns a new [WorkflowTransitionRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowTransitionRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return WorkflowTransitionRead(
      description: json[r'description'],
      fields:
          json[r'fields'] == null ? null : List<String>.from(json[r'fields']),
      from: WorkflowStateRead.fromJson(json[r'from']),
      name: json[r'name'],
      required_: json[r'required'] == null
          ? null
          : List<String>.from(json[r'required']),
      to: WorkflowStateRead.fromJson(json[r'to']),
      id: json[r'id'],
    );
  }

  String? description;

  List<String>? fields;

  WorkflowStateRead? from;

  String name;

  List<String>? required_;

  WorkflowStateRead? to;

  /// The resource identifier.
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowTransitionRead &&
        other.description == description &&
        DeepCollectionEquality.unordered().equals(fields, other.fields) &&
        other.from == from &&
        other.name == name &&
        DeepCollectionEquality.unordered().equals(required_, other.required_) &&
        other.to == to &&
        other.id == id;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (fields == null ? 0 : fields.hashCode) +
      (from == null ? 0 : from.hashCode) +
      name.hashCode +
      (required_ == null ? 0 : required_.hashCode) +
      (to == null ? 0 : to.hashCode) +
      (id == null ? 0 : id.hashCode);

  static List<WorkflowTransitionRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <WorkflowTransitionRead>[];
    }

    return json.fold(<WorkflowTransitionRead>[],
        (List<WorkflowTransitionRead> previousValue, element) {
      final WorkflowTransitionRead? object =
          WorkflowTransitionRead.fromJson(element);
      if (object is WorkflowTransitionRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowTransitionRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowTransitionRead>{};
    }

    return json.entries.fold(<String, WorkflowTransitionRead>{},
        (Map<String, WorkflowTransitionRead> previousValue, element) {
      final WorkflowTransitionRead? object =
          WorkflowTransitionRead.fromJson(element.value);
      if (object is WorkflowTransitionRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowTransitionRead-objects as value to a dart map
  static Map<String, List<WorkflowTransitionRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowTransitionRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowTransitionRead>>(
          key, WorkflowTransitionRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WorkflowTransitionRead[description=$description, fields=$fields, from=$from, name=$name, required_=$required_, to=$to, id=$id]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'fields')) r'fields': fields,
      if (keys == null || keys.any((key) => RegExp(r'^from\.').hasMatch(key)))
        r'from': from?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^from\.'))) {
            previousValue.add(element.split(RegExp(r'^from\.')).last);
          }

          return previousValue;
        })),
      r'name': name,
      if (keys == null || keys.contains(r'required_')) r'required': required_,
      if (keys == null || keys.any((key) => RegExp(r'^to\.').hasMatch(key)))
        r'to': to?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^to\.'))) {
            previousValue.add(element.split(RegExp(r'^to\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'id')) r'id': id,
    };
  }
}
