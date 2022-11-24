//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AssignmentLinksReportIriTemplate {
  /// Returns a new [AssignmentLinksReportIriTemplate] instance.
  AssignmentLinksReportIriTemplate({
    this.mapping,
  });

  /// Returns a new [AssignmentLinksReportIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AssignmentLinksReportIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksReportIriTemplate(
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

    return other is AssignmentLinksReportIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<AssignmentLinksReportIriTemplate> listFromJson(
      List<dynamic> json) {
    return <AssignmentLinksReportIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          AssignmentLinksReportIriTemplate.fromJson(value),
    ];
  }

  static Map<String, AssignmentLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AssignmentLinksReportIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentLinksReportIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AssignmentLinksReportIriTemplate-objects as value to a dart map
  static Map<String, List<AssignmentLinksReportIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<AssignmentLinksReportIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentLinksReportIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AssignmentLinksReportIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
