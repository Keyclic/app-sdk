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

    return json.fold(<AssignmentLinksReport>[],
        (List<AssignmentLinksReport> previousValue, element) {
      final AssignmentLinksReport? object =
          AssignmentLinksReport.fromJson(element);
      if (object is AssignmentLinksReport) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksReport> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksReport>{};
    }

    return json.entries.fold(<String, AssignmentLinksReport>{},
        (Map<String, AssignmentLinksReport> previousValue, element) {
      final AssignmentLinksReport? object =
          AssignmentLinksReport.fromJson(element.value);
      if (object is AssignmentLinksReport) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksReport-objects as value to a dart map
  static Map<String, List<AssignmentLinksReport>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksReport>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksReport>>(
          key, AssignmentLinksReport.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksReport[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
