//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksOperations {
  /// Returns a new [ReportLinksOperations] instance.
  ReportLinksOperations({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksOperations] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksOperations.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksOperations(
      href: json[r'href'],
      iriTemplate:
          ReportLinksOperationsIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the operations associated to the given report.
  String href;

  ReportLinksOperationsIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOperations &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksOperations> listFromJson(List<dynamic> json) {
    return <ReportLinksOperations>[
      if (json is List)
        for (dynamic value in json) ReportLinksOperations.fromJson(value),
    ];
  }

  static Map<String, ReportLinksOperations> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksOperations>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksOperations.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksOperations-objects as value to a dart map
  static Map<String, List<ReportLinksOperations>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinksOperations>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksOperations.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReportLinksOperations[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
