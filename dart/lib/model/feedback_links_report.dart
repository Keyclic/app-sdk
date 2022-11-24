//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksReport {
  /// Returns a new [FeedbackLinksReport] instance.
  FeedbackLinksReport({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksReport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksReport.fromJson(Map<String, dynamic> json) {
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
  String href;

  FeedbackLinksReportIriTemplate iriTemplate;

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

  static List<FeedbackLinksReport> listFromJson(List<dynamic> json) {
    return <FeedbackLinksReport>[
      if (json is List)
        for (dynamic value in json) FeedbackLinksReport.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksReport> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksReport>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksReport.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksReport-objects as value to a dart map
  static Map<String, List<FeedbackLinksReport>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksReport>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksReport.listFromJson(entry.value),
    };
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
