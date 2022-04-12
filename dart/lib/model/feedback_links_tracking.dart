//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksTracking {
  /// Returns a new [FeedbackLinksTracking] instance.
  FeedbackLinksTracking({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksTracking] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksTracking? fromJson(Map<String, dynamic>? json) {
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
  String? href;

  FeedbackLinksTrackingIriTemplate? iriTemplate;

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

  static List<FeedbackLinksTracking> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksTracking>[];
    }
    return json
        .map((value) {
          return FeedbackLinksTracking.fromJson(value);
        })
        .whereType<FeedbackLinksTracking>()
        .toList();
  }

  static Map<String, FeedbackLinksTracking> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksTracking>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, FeedbackLinksTracking?>(
            key, FeedbackLinksTracking.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackLinksTracking>;
  }

  // maps a json object with a list of FeedbackLinksTracking-objects as value to a dart map
  static Map<String, List<FeedbackLinksTracking>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackLinksTracking>>{
      if (json is Map)
        for (final entry in json!.entries)
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
