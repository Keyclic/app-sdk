//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksBusinessActivity {
  /// Returns a new [FeedbackLinksBusinessActivity] instance.
  FeedbackLinksBusinessActivity({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksBusinessActivity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksBusinessActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksBusinessActivity(
      href: json[r'href'],
      iriTemplate: FeedbackLinksBusinessActivityIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the businessActivity associated to the given feedback.
  String href;

  FeedbackLinksBusinessActivityIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksBusinessActivity &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksBusinessActivity> listFromJson(List<dynamic> json) {
    return <FeedbackLinksBusinessActivity>[
      if (json is List)
        for (dynamic value in json)
          FeedbackLinksBusinessActivity.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksBusinessActivity> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksBusinessActivity>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksBusinessActivity.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksBusinessActivity-objects as value to a dart map
  static Map<String, List<FeedbackLinksBusinessActivity>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksBusinessActivity>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksBusinessActivity.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksBusinessActivity[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
