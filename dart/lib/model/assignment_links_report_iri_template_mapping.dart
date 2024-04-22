//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksReportIriTemplateMapping {
  /// Returns a new [AssignmentLinksReportIriTemplateMapping] instance.
  AssignmentLinksReportIriTemplateMapping({
    this.report,
  });

  /// Returns a new [AssignmentLinksReportIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksReportIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentLinksReportIriTemplateMapping(
      report: json[r'report'],
    );
  }

  String? report;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksReportIriTemplateMapping &&
        other.report == report;
  }

  @override
  int get hashCode => (report == null ? 0 : report.hashCode);

  static List<AssignmentLinksReportIriTemplateMapping> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <AssignmentLinksReportIriTemplateMapping>[];
    }

    return json.fold(<AssignmentLinksReportIriTemplateMapping>[],
        (List<AssignmentLinksReportIriTemplateMapping> previousValue, element) {
      final AssignmentLinksReportIriTemplateMapping? object =
          AssignmentLinksReportIriTemplateMapping.fromJson(element);
      if (object is AssignmentLinksReportIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksReportIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksReportIriTemplateMapping>{};
    }

    return json.entries
        .fold(<String, AssignmentLinksReportIriTemplateMapping>{},
            (Map<String, AssignmentLinksReportIriTemplateMapping> previousValue,
                element) {
      final AssignmentLinksReportIriTemplateMapping? object =
          AssignmentLinksReportIriTemplateMapping.fromJson(element.value);
      if (object is AssignmentLinksReportIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksReportIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksReportIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksReportIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksReportIriTemplateMapping>>(
          key, AssignmentLinksReportIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksReportIriTemplateMapping[report=$report]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'report')) r'report': report,
    };
  }
}
