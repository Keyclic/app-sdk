//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksChildrenIriTemplateMapping {
  /// Returns a new [ReportLinksChildrenIriTemplateMapping] instance.
  ReportLinksChildrenIriTemplateMapping({
    this.organization,
    this.parent,
  });

  /// Returns a new [ReportLinksChildrenIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksChildrenIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksChildrenIriTemplateMapping(
      organization: json[r'organization'],
      parent: json[r'parent'],
    );
  }

  String organization;

  String parent;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksChildrenIriTemplateMapping &&
        other.organization == organization &&
        other.parent == parent;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (parent == null ? 0 : parent.hashCode);

  static List<ReportLinksChildrenIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <ReportLinksChildrenIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          ReportLinksChildrenIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, ReportLinksChildrenIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksChildrenIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ReportLinksChildrenIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksChildrenIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ReportLinksChildrenIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<ReportLinksChildrenIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ReportLinksChildrenIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReportLinksChildrenIriTemplateMapping[organization=$organization, parent=$parent]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (organization != null) r'organization': organization,
      if (parent != null) r'parent': parent,
    };
  }
}
