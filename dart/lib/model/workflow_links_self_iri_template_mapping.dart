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
    return json
        .map((value) {
          return WorkflowLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<WorkflowLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, WorkflowLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, WorkflowLinksSelfIriTemplateMapping?>(
            key, WorkflowLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, WorkflowLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of WorkflowLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<WorkflowLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<WorkflowLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              WorkflowLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'WorkflowLinksSelfIriTemplateMapping[workflow=$workflow]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (workflow != null) r'workflow': workflow,
    };
  }
}
