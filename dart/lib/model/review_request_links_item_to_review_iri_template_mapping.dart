//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequestLinksItemToReviewIriTemplateMapping {
  /// Returns a new [ReviewRequestLinksItemToReviewIriTemplateMapping] instance.
  ReviewRequestLinksItemToReviewIriTemplateMapping({
    this.feedback,
    this.task,
  });

  /// Returns a new [ReviewRequestLinksItemToReviewIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksItemToReviewIriTemplateMapping(
      feedback: json[r'feedback'],
      task: json[r'task'],
    );
  }

  String feedback;

  String task;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksItemToReviewIriTemplateMapping &&
        other.feedback == feedback &&
        other.task == task;
  }

  @override
  int get hashCode =>
      (feedback == null ? 0 : feedback.hashCode) +
      (task == null ? 0 : task.hashCode);

  static List<ReviewRequestLinksItemToReviewIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <ReviewRequestLinksItemToReviewIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, ReviewRequestLinksItemToReviewIriTemplateMapping>
      mapFromJson(Map<String, dynamic> json) {
    return <String, ReviewRequestLinksItemToReviewIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(
              entry.value),
    };
  }

  // maps a json object with a list of ReviewRequestLinksItemToReviewIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksItemToReviewIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<ReviewRequestLinksItemToReviewIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ReviewRequestLinksItemToReviewIriTemplateMapping.listFromJson(
                  entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksItemToReviewIriTemplateMapping[feedback=$feedback, task=$task]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (feedback != null) r'feedback': feedback,
      if (task != null) r'task': task,
    };
  }
}
