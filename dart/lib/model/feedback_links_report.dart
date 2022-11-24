//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksReport {
  /// Returns a new [FeedbackLinksReport] instance.
  FeedbackLinksReport({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksReport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksReport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReport(
      href: json[r'href'],
      iriTemplate:
          FeedbackLinksReportIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the report associated to the given feedback.
  String? href;

  FeedbackLinksReportIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReport &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksReport> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksReport>[];
    }

    return json.fold(<FeedbackLinksReport>[],
        (List<FeedbackLinksReport> previousValue, element) {
      final FeedbackLinksReport? object = FeedbackLinksReport.fromJson(element);
      if (object is FeedbackLinksReport) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksReport> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksReport>{};
    }

    return json.entries.fold(<String, FeedbackLinksReport>{},
        (Map<String, FeedbackLinksReport> previousValue, element) {
      final FeedbackLinksReport? object =
          FeedbackLinksReport.fromJson(element.value);
      if (object is FeedbackLinksReport) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksReport-objects as value to a dart map
  static Map<String, List<FeedbackLinksReport>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksReport>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksReport>>(
          key, FeedbackLinksReport.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksReport[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
