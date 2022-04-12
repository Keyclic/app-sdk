//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksReporter {
  /// Returns a new [FeedbackLinksReporter] instance.
  FeedbackLinksReporter({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksReporter] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksReporter.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReporter(
      href: json[r'href'],
      iriTemplate:
          FeedbackLinksReporterIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the reporter associated to the given feedback.
  String href;

  FeedbackLinksReporterIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReporter &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksReporter> listFromJson(List<dynamic> json) {
    return <FeedbackLinksReporter>[
      if (json is List)
        for (dynamic value in json) FeedbackLinksReporter.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksReporter> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksReporter>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksReporter.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksReporter-objects as value to a dart map
  static Map<String, List<FeedbackLinksReporter>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksReporter>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksReporter.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksReporter[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
