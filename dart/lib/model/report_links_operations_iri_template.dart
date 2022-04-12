//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksOperationsIriTemplate {
  /// Returns a new [ReportLinksOperationsIriTemplate] instance.
  ReportLinksOperationsIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksOperationsIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksOperationsIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksOperationsIriTemplate(
      mapping:
          AssignmentLinksReportIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOperationsIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksOperationsIriTemplate> listFromJson(
      List<dynamic> json) {
    return <ReportLinksOperationsIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ReportLinksOperationsIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReportLinksOperationsIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksOperationsIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksOperationsIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksOperationsIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksOperationsIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinksOperationsIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksOperationsIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportLinksOperationsIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
