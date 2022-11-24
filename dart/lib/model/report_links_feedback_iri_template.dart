//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksFeedbackIriTemplate {
  /// Returns a new [ReportLinksFeedbackIriTemplate] instance.
  ReportLinksFeedbackIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksFeedbackIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksFeedbackIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksFeedbackIriTemplate(
      mapping: ContributionLinksFeedbackIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksFeedbackIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksFeedbackIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksFeedbackIriTemplate> listFromJson(List<dynamic> json) {
    return <ReportLinksFeedbackIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ReportLinksFeedbackIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReportLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksFeedbackIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksFeedbackIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksFeedbackIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksFeedbackIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinksFeedbackIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksFeedbackIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportLinksFeedbackIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
