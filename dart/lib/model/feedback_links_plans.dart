//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksPlans {
  /// Returns a new [FeedbackLinksPlans] instance.
  FeedbackLinksPlans({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksPlans] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksPlans? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksPlans(
      href: json[r'href'],
      iriTemplate: FeedbackLinksPlansIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the plans associated to the given feedback.
  String? href;

  FeedbackLinksPlansIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksPlans &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksPlans> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksPlans>[];
    }
    return json
        .map((value) {
          return FeedbackLinksPlans.fromJson(value);
        })
        .whereType<FeedbackLinksPlans>()
        .toList();
  }

  static Map<String, FeedbackLinksPlans> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksPlans>{};
    }

    final map = json.map((key, value) => MapEntry<String, FeedbackLinksPlans?>(
        key, FeedbackLinksPlans.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackLinksPlans>;
  }

  // maps a json object with a list of FeedbackLinksPlans-objects as value to a dart map
  static Map<String, List<FeedbackLinksPlans>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackLinksPlans>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: FeedbackLinksPlans.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksPlans[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
