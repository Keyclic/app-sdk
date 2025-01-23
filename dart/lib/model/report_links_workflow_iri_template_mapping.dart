//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksWorkflowIriTemplateMapping {
  /// Returns a new [ReportLinksWorkflowIriTemplateMapping] instance.
  ReportLinksWorkflowIriTemplateMapping({
    this.workflow,
  });

  /// Returns a new [ReportLinksWorkflowIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksWorkflowIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksWorkflowIriTemplateMapping(
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

    return other is ReportLinksWorkflowIriTemplateMapping &&
        other.workflow == workflow;
  }

  @override
  int get hashCode => (workflow == null ? 0 : workflow.hashCode);

  static List<ReportLinksWorkflowIriTemplateMapping> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ReportLinksWorkflowIriTemplateMapping>[];
    }

    return json.fold(<ReportLinksWorkflowIriTemplateMapping>[],
        (List<ReportLinksWorkflowIriTemplateMapping> previousValue, element) {
      final ReportLinksWorkflowIriTemplateMapping? object =
          ReportLinksWorkflowIriTemplateMapping.fromJson(element);
      if (object is ReportLinksWorkflowIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksWorkflowIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksWorkflowIriTemplateMapping>{};
    }

    return json.entries.fold(<String, ReportLinksWorkflowIriTemplateMapping>{},
        (Map<String, ReportLinksWorkflowIriTemplateMapping> previousValue,
            element) {
      final ReportLinksWorkflowIriTemplateMapping? object =
          ReportLinksWorkflowIriTemplateMapping.fromJson(element.value);
      if (object is ReportLinksWorkflowIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksWorkflowIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ReportLinksWorkflowIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksWorkflowIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksWorkflowIriTemplateMapping>>(
          key, ReportLinksWorkflowIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksWorkflowIriTemplateMapping[workflow=$workflow]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'workflow')) r'workflow': workflow,
    };
  }
}
