//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksSelfIriTemplate {
  /// Returns a new [ReportLinksSelfIriTemplate] instance.
  ReportLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksSelfIriTemplate(
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

    return other is ReportLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <ReportLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json) ReportLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReportLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
