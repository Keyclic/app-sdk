//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksWorkflowIriTemplate {
  /// Returns a new [ReportLinksWorkflowIriTemplate] instance.
  ReportLinksWorkflowIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksWorkflowIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksWorkflowIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksWorkflowIriTemplate(
      mapping: ReportLinksWorkflowIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ReportLinksWorkflowIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksWorkflowIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksWorkflowIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksWorkflowIriTemplate>[];
    }

    return json.fold(<ReportLinksWorkflowIriTemplate>[],
        (List<ReportLinksWorkflowIriTemplate> previousValue, element) {
      final ReportLinksWorkflowIriTemplate? object =
          ReportLinksWorkflowIriTemplate.fromJson(element);
      if (object is ReportLinksWorkflowIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksWorkflowIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksWorkflowIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksWorkflowIriTemplate>{},
        (Map<String, ReportLinksWorkflowIriTemplate> previousValue, element) {
      final ReportLinksWorkflowIriTemplate? object =
          ReportLinksWorkflowIriTemplate.fromJson(element.value);
      if (object is ReportLinksWorkflowIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksWorkflowIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksWorkflowIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksWorkflowIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksWorkflowIriTemplate>>(
          key, ReportLinksWorkflowIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksWorkflowIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
