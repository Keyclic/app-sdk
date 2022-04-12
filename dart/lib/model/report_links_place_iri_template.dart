//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksPlaceIriTemplate {
  /// Returns a new [ReportLinksPlaceIriTemplate] instance.
  ReportLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksPlaceIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksPlaceIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksPlaceIriTemplate>[];
    }
    return json
        .map((value) {
          return ReportLinksPlaceIriTemplate.fromJson(value);
        })
        .whereType<ReportLinksPlaceIriTemplate>()
        .toList();
  }

  static Map<String, ReportLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksPlaceIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReportLinksPlaceIriTemplate?>(
            key, ReportLinksPlaceIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReportLinksPlaceIriTemplate>;
  }

  // maps a json object with a list of ReportLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReportLinksPlaceIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReportLinksPlaceIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportLinksPlaceIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
