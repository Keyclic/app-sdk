//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksReporterIriTemplate {
  /// Returns a new [FeedbackLinksReporterIriTemplate] instance.
  FeedbackLinksReporterIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksReporterIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksReporterIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReporterIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReporterIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksReporterIriTemplate> listFromJson(
      List<dynamic> json) {
    return <FeedbackLinksReporterIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          FeedbackLinksReporterIriTemplate.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksReporterIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksReporterIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksReporterIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksReporterIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksReporterIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksReporterIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksReporterIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackLinksReporterIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
