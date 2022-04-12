//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksTrackingIriTemplate {
  /// Returns a new [ReportLinksTrackingIriTemplate] instance.
  ReportLinksTrackingIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksTrackingIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksTrackingIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksTrackingIriTemplate(
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

    return other is ReportLinksTrackingIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksTrackingIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksTrackingIriTemplate>[];
    }
    return json
        .map((value) {
          return ReportLinksTrackingIriTemplate.fromJson(value);
        })
        .whereType<ReportLinksTrackingIriTemplate>()
        .toList();
  }

  static Map<String, ReportLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksTrackingIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReportLinksTrackingIriTemplate?>(
            key, ReportLinksTrackingIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReportLinksTrackingIriTemplate>;
  }

  // maps a json object with a list of ReportLinksTrackingIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksTrackingIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReportLinksTrackingIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReportLinksTrackingIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportLinksTrackingIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
