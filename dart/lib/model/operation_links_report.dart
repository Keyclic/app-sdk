//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksReport {
  /// Returns a new [OperationLinksReport] instance.
  OperationLinksReport({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksReport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksReport? fromJson(Map<String, dynamic>? json) {
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
  String? href;

  OperationLinksReportIriTemplate? iriTemplate;

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

  static List<OperationLinksReport> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksReport>[];
    }
    return json
        .map((value) {
          return OperationLinksReport.fromJson(value);
        })
        .whereType<OperationLinksReport>()
        .toList();
  }

  static Map<String, OperationLinksReport> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksReport>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationLinksReport?>(
            key, OperationLinksReport.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksReport>;
  }

  // maps a json object with a list of OperationLinksReport-objects as value to a dart map
  static Map<String, List<OperationLinksReport>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationLinksReport>>{
      if (json is Map)
        for (final entry in json!.entries)
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
