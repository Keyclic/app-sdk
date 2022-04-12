//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksPlansIriTemplateMapping {
  /// Returns a new [FeedbackLinksPlansIriTemplateMapping] instance.
  FeedbackLinksPlansIriTemplateMapping({
    this.plan,
    this.feedback,
  });

  /// Returns a new [FeedbackLinksPlansIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksPlansIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksPlansIriTemplateMapping(
      plan: json[r'plan'],
      feedback: json[r'feedback'],
    );
  }

  String? plan;

  String? feedback;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksPlansIriTemplateMapping &&
        other.plan == plan &&
        other.feedback == feedback;
  }

  @override
  int get hashCode =>
      (plan == null ? 0 : plan.hashCode) +
      (feedback == null ? 0 : feedback.hashCode);

  static List<FeedbackLinksPlansIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksPlansIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return FeedbackLinksPlansIriTemplateMapping.fromJson(value);
        })
        .whereType<FeedbackLinksPlansIriTemplateMapping>()
        .toList();
  }

  static Map<String, FeedbackLinksPlansIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksPlansIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, FeedbackLinksPlansIriTemplateMapping?>(
            key, FeedbackLinksPlansIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackLinksPlansIriTemplateMapping>;
  }

  // maps a json object with a list of FeedbackLinksPlansIriTemplateMapping-objects as value to a dart map
  static Map<String, List<FeedbackLinksPlansIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<FeedbackLinksPlansIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              FeedbackLinksPlansIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksPlansIriTemplateMapping[plan=$plan, feedback=$feedback]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (plan != null) r'plan': plan,
      if (feedback != null) r'feedback': feedback,
    };
  }
}
