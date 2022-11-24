//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksTracking {
  /// Returns a new [FeedbackLinksTracking] instance.
  FeedbackLinksTracking({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksTracking] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksTracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksTracking(
      href: json[r'href'],
      iriTemplate:
          FeedbackLinksTrackingIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the tracking associated to the given feedback.
  String href;

  FeedbackLinksTrackingIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksTracking &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksTracking> listFromJson(List<dynamic> json) {
    return <FeedbackLinksTracking>[
      if (json is List)
        for (dynamic value in json) FeedbackLinksTracking.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksTracking> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksTracking>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksTracking.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksTracking-objects as value to a dart map
  static Map<String, List<FeedbackLinksTracking>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksTracking>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksTracking.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksTracking[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
