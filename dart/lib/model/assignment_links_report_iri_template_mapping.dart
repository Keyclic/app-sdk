//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AssignmentLinksReportIriTemplateMapping {
  /// Returns a new [AssignmentLinksReportIriTemplateMapping] instance.
  AssignmentLinksReportIriTemplateMapping({
    this.report,
  });

  /// Returns a new [AssignmentLinksReportIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AssignmentLinksReportIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksReportIriTemplateMapping(
      report: json[r'report'],
    );
  }

  String report;

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
      List<dynamic> json) {
    return <AssignmentLinksReportIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          AssignmentLinksReportIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, AssignmentLinksReportIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AssignmentLinksReportIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              AssignmentLinksReportIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AssignmentLinksReportIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksReportIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<AssignmentLinksReportIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              AssignmentLinksReportIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentLinksReportIriTemplateMapping[report=$report]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (report != null) r'report': report,
    };
  }
}
