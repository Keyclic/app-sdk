//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksOrganization {
  /// Returns a new [ReportLinksOrganization] instance.
  ReportLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksOrganization(
      href: json[r'href'],
      iriTemplate:
          ReportLinksOrganizationIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given report.
  String href;

  ReportLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksOrganization> listFromJson(List<dynamic> json) {
    return <ReportLinksOrganization>[
      if (json is List)
        for (dynamic value in json) ReportLinksOrganization.fromJson(value),
    ];
  }

  static Map<String, ReportLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksOrganization>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksOrganization.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksOrganization-objects as value to a dart map
  static Map<String, List<ReportLinksOrganization>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinksOrganization>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksOrganization.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReportLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
