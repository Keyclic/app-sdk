//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationEmbedded {
  /// Returns a new [OperationEmbedded] instance.
  OperationEmbedded({
    this.createdBy,
    this.operator_,
    this.workflow,
  });

  /// Returns a new [OperationEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationEmbedded(
      createdBy: Person.fromJson(json[r'createdBy']),
      operator_: Person.fromJson(json[r'operator']),
      workflow: OperationEmbeddedWorkflow.fromJson(json[r'workflow']),
    );
  }

  Person? createdBy;

  Person? operator_;

  OperationEmbeddedWorkflow? workflow;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbedded &&
        other.createdBy == createdBy &&
        other.operator_ == operator_ &&
        other.workflow == workflow;
  }

  @override
  int get hashCode =>
      (createdBy == null ? 0 : createdBy.hashCode) +
      (operator_ == null ? 0 : operator_.hashCode) +
      (workflow == null ? 0 : workflow.hashCode);

  static List<OperationEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationEmbedded>[];
    }

    return json.fold(<OperationEmbedded>[],
        (List<OperationEmbedded> previousValue, element) {
      final OperationEmbedded? object = OperationEmbedded.fromJson(element);
      if (object is OperationEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationEmbedded>{};
    }

    return json.entries.fold(<String, OperationEmbedded>{},
        (Map<String, OperationEmbedded> previousValue, element) {
      final OperationEmbedded? object =
          OperationEmbedded.fromJson(element.value);
      if (object is OperationEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationEmbedded-objects as value to a dart map
  static Map<String, List<OperationEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationEmbedded>>(
          key, OperationEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationEmbedded[createdBy=$createdBy, operator_=$operator_, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (createdBy != null) r'createdBy': createdBy,
      if (operator_ != null) r'operator': operator_,
      if (workflow != null) r'workflow': workflow,
    };
  }
}
