//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksPlaceIriTemplate {
  /// Returns a new [ReportLinksPlaceIriTemplate] instance.
  ReportLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping mapping;

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

  static List<ReportLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return <ReportLinksPlaceIriTemplate>[
      if (json is List)
        for (dynamic value in json) ReportLinksPlaceIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReportLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksPlaceIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksPlaceIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinksPlaceIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
