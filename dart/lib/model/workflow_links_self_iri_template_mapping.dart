//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class WorkflowLinksSelfIriTemplateMapping {
  /// Returns a new [WorkflowLinksSelfIriTemplateMapping] instance.
  WorkflowLinksSelfIriTemplateMapping({
    this.workflow,
  });

  /// Returns a new [WorkflowLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WorkflowLinksSelfIriTemplateMapping(
      workflow: json[r'workflow'],
    );
  }

  String? workflow;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowLinksSelfIriTemplateMapping &&
        other.workflow == workflow;
  }

  @override
  int get hashCode => (workflow == null ? 0 : workflow.hashCode);

  static List<WorkflowLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <WorkflowLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<WorkflowLinksSelfIriTemplateMapping>[],
        (List<WorkflowLinksSelfIriTemplateMapping> previousValue, element) {
      final WorkflowLinksSelfIriTemplateMapping? object =
          WorkflowLinksSelfIriTemplateMapping.fromJson(element);
      if (object is WorkflowLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, WorkflowLinksSelfIriTemplateMapping>{},
        (Map<String, WorkflowLinksSelfIriTemplateMapping> previousValue,
            element) {
      final WorkflowLinksSelfIriTemplateMapping? object =
          WorkflowLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is WorkflowLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<WorkflowLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowLinksSelfIriTemplateMapping>>(
          key, WorkflowLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WorkflowLinksSelfIriTemplateMapping[workflow=$workflow]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'workflow')) r'workflow': workflow,
    };
  }
}
