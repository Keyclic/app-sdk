//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksReport {
  /// Returns a new [AssignmentLinksReport] instance.
  AssignmentLinksReport({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [AssignmentLinksReport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksReport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksReport(
      href: json[r'href'],
      iriTemplate:
          AssignmentLinksReportIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the report associated to the given assignment.
  String? href;

  AssignmentLinksReportIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksReport &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<AssignmentLinksReport> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksReport>[];
    }
    return json
        .map((value) {
          return AssignmentLinksReport.fromJson(value);
        })
        .whereType<AssignmentLinksReport>()
        .toList();
  }

  static Map<String, AssignmentLinksReport> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksReport>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AssignmentLinksReport?>(
            key, AssignmentLinksReport.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignmentLinksReport>;
  }

  // maps a json object with a list of AssignmentLinksReport-objects as value to a dart map
  static Map<String, List<AssignmentLinksReport>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AssignmentLinksReport>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AssignmentLinksReport.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentLinksReport[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
