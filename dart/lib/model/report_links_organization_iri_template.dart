//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksOrganizationIriTemplate {
  /// Returns a new [ReportLinksOrganizationIriTemplate] instance.
  ReportLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return <ReportLinksOrganizationIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ReportLinksOrganizationIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReportLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksOrganizationIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksOrganizationIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksOrganizationIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ReportLinksOrganizationIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
