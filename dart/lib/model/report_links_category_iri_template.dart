//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksCategoryIriTemplate {
  /// Returns a new [ReportLinksCategoryIriTemplate] instance.
  ReportLinksCategoryIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksCategoryIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksCategoryIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksCategoryIriTemplate(
      mapping: CategoryLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksCategoryIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksCategoryIriTemplate> listFromJson(List<dynamic> json) {
    return <ReportLinksCategoryIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ReportLinksCategoryIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReportLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksCategoryIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksCategoryIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksCategoryIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksCategoryIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinksCategoryIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksCategoryIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportLinksCategoryIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
