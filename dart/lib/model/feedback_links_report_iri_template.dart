//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksReportIriTemplate {
  /// Returns a new [FeedbackLinksReportIriTemplate] instance.
  FeedbackLinksReportIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksReportIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksReportIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReportIriTemplate(
      mapping:
          AssignmentLinksReportIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReportIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksReportIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksReportIriTemplate>[];
    }
    return json
        .map((value) {
          return FeedbackLinksReportIriTemplate.fromJson(value);
        })
        .whereType<FeedbackLinksReportIriTemplate>()
        .toList();
  }

  static Map<String, FeedbackLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksReportIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, FeedbackLinksReportIriTemplate?>(
            key, FeedbackLinksReportIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackLinksReportIriTemplate>;
  }

  // maps a json object with a list of FeedbackLinksReportIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksReportIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackLinksReportIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: FeedbackLinksReportIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackLinksReportIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
