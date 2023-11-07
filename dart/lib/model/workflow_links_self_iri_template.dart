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
      mapping: json[r'mapping'] is! Map
          ? null
          : WorkflowLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
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

    return json.fold(<WorkflowLinksSelfIriTemplate>[],
        (List<WorkflowLinksSelfIriTemplate> previousValue, element) {
      final WorkflowLinksSelfIriTemplate? object =
          WorkflowLinksSelfIriTemplate.fromJson(element);
      if (object is WorkflowLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, WorkflowLinksSelfIriTemplate>{},
        (Map<String, WorkflowLinksSelfIriTemplate> previousValue, element) {
      final WorkflowLinksSelfIriTemplate? object =
          WorkflowLinksSelfIriTemplate.fromJson(element.value);
      if (object is WorkflowLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<WorkflowLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowLinksSelfIriTemplate>>(
          key, WorkflowLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'WorkflowLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
