//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksReporterIriTemplate {
  /// Returns a new [FeedbackLinksReporterIriTemplate] instance.
  FeedbackLinksReporterIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksReporterIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksReporterIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReporterIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

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
      List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksReporterIriTemplate>[];
    }
    return json
        .map((value) {
          return FeedbackLinksReporterIriTemplate.fromJson(value);
        })
        .whereType<FeedbackLinksReporterIriTemplate>()
        .toList();
  }

  static Map<String, FeedbackLinksReporterIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksReporterIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, FeedbackLinksReporterIriTemplate?>(
            key, FeedbackLinksReporterIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackLinksReporterIriTemplate>;
  }

  // maps a json object with a list of FeedbackLinksReporterIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksReporterIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackLinksReporterIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
