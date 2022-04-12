//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class WorkflowLinksSelfIriTemplate {
  /// Returns a new [WorkflowLinksSelfIriTemplate] instance.
  WorkflowLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [WorkflowLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory WorkflowLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowLinksSelfIriTemplate(
      mapping: WorkflowLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  WorkflowLinksSelfIriTemplateMapping mapping;

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

  static List<WorkflowLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <WorkflowLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          WorkflowLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, WorkflowLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, WorkflowLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: WorkflowLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of WorkflowLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<WorkflowLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<WorkflowLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
