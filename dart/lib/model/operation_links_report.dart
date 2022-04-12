//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksReport {
  /// Returns a new [OperationLinksReport] instance.
  OperationLinksReport({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksReport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksReport.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksReport(
      href: json[r'href'],
      iriTemplate:
          OperationLinksReportIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the report associated to the given operation.
  String href;

  OperationLinksReportIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksReport &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksReport> listFromJson(List<dynamic> json) {
    return <OperationLinksReport>[
      if (json is List)
        for (dynamic value in json) OperationLinksReport.fromJson(value),
    ];
  }

  static Map<String, OperationLinksReport> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksReport>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksReport.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksReport-objects as value to a dart map
  static Map<String, List<OperationLinksReport>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksReport>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksReport.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksReport[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
