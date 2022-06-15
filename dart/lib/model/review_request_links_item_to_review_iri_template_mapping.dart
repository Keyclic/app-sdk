part of keyclic_sdk_api.api;

class ReviewRequestLinksItemToReviewIriTemplateMapping {
  ReviewRequestLinksItemToReviewIriTemplateMapping({
    this.feedback,
    this.task,
  });

  factory ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksItemToReviewIriTemplateMapping(
      feedback: json['feedback'],
      task: json['task'],
    );
  }

  String feedback;

  String task;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksItemToReviewIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        feedback == other.feedback &&
        task == other.task;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= feedback?.hashCode ?? 0;
    hashCode ^= task?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewRequestLinksItemToReviewIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(
                    value))
            ?.toList() ??
        <ReviewRequestLinksItemToReviewIriTemplateMapping>[];
  }

  static Map<String, ReviewRequestLinksItemToReviewIriTemplateMapping>
      mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ReviewRequestLinksItemToReviewIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(key,
              ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(value));
        }) ??
        <String, ReviewRequestLinksItemToReviewIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (feedback != null) 'feedback': feedback,
      if (task != null) 'task': task,
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksItemToReviewIriTemplateMapping[feedback=$feedback, task=$task, ]';
  }
}
