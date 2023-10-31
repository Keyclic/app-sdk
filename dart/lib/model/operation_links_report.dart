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

    return json.fold(<OperationLinksReport>[],
        (List<OperationLinksReport> previousValue, element) {
      final OperationLinksReport? object =
          OperationLinksReport.fromJson(element);
      if (object is OperationLinksReport) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksReport> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksReport>{};
    }

    return json.entries.fold(<String, OperationLinksReport>{},
        (Map<String, OperationLinksReport> previousValue, element) {
      final OperationLinksReport? object =
          OperationLinksReport.fromJson(element.value);
      if (object is OperationLinksReport) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksReport-objects as value to a dart map
  static Map<String, List<OperationLinksReport>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksReport>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksReport>>(
          key, OperationLinksReport.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksReport[href=$href, iriTemplate=$iriTemplate]';

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
