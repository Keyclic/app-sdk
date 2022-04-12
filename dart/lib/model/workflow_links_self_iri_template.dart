//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class WorkflowLinksSelfIriTemplate {
  /// Returns a new [WorkflowLinksSelfIriTemplate] instance.
  WorkflowLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [WorkflowLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WorkflowLinksSelfIriTemplate(
      mapping: WorkflowLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  WorkflowLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<WorkflowLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <WorkflowLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return WorkflowLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<WorkflowLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, WorkflowLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, WorkflowLinksSelfIriTemplate?>(
            key, WorkflowLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, WorkflowLinksSelfIriTemplate>;
  }

  // maps a json object with a list of WorkflowLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<WorkflowLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<WorkflowLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: WorkflowLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'WorkflowLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
