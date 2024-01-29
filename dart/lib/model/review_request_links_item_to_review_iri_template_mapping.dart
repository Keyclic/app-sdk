//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksItemToReviewIriTemplateMapping {
  /// Returns a new [ReviewRequestLinksItemToReviewIriTemplateMapping] instance.
  ReviewRequestLinksItemToReviewIriTemplateMapping({
    this.feedback,
    this.task,
  });

  /// Returns a new [ReviewRequestLinksItemToReviewIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksItemToReviewIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksItemToReviewIriTemplateMapping(
      feedback: json[r'feedback'],
      task: json[r'task'],
    );
  }

  String? feedback;

  String? task;

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
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksItemToReviewIriTemplateMapping>[];
    }

    return json.fold(<ReviewRequestLinksItemToReviewIriTemplateMapping>[],
        (List<ReviewRequestLinksItemToReviewIriTemplateMapping> previousValue,
            element) {
      final ReviewRequestLinksItemToReviewIriTemplateMapping? object =
          ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(element);
      if (object is ReviewRequestLinksItemToReviewIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksItemToReviewIriTemplateMapping>
      mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksItemToReviewIriTemplateMapping>{};
    }

    return json.entries
        .fold(<String, ReviewRequestLinksItemToReviewIriTemplateMapping>{},
            (Map<String, ReviewRequestLinksItemToReviewIriTemplateMapping>
                    previousValue,
                element) {
      final ReviewRequestLinksItemToReviewIriTemplateMapping? object =
          ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(
              element.value);
      if (object is ReviewRequestLinksItemToReviewIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksItemToReviewIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksItemToReviewIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksItemToReviewIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<ReviewRequestLinksItemToReviewIriTemplateMapping>>(key,
          ReviewRequestLinksItemToReviewIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksItemToReviewIriTemplateMapping[feedback=$feedback, task=$task]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'feedback')) r'feedback': feedback,
      if (keys == null || keys.contains(r'task')) r'task': task,
    };
  }
}
