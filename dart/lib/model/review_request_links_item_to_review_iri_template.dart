//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksItemToReviewIriTemplate {
  /// Returns a new [ReviewRequestLinksItemToReviewIriTemplate] instance.
  ReviewRequestLinksItemToReviewIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksItemToReviewIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksItemToReviewIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksItemToReviewIriTemplate(
      mapping: ContributionLinksFeedbackIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksFeedbackIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksItemToReviewIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewRequestLinksItemToReviewIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksItemToReviewIriTemplate>[];
    }
    return json
        .map((value) {
          return ReviewRequestLinksItemToReviewIriTemplate.fromJson(value);
        })
        .whereType<ReviewRequestLinksItemToReviewIriTemplate>()
        .toList();
  }

  static Map<String, ReviewRequestLinksItemToReviewIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksItemToReviewIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewRequestLinksItemToReviewIriTemplate?>(
            key, ReviewRequestLinksItemToReviewIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestLinksItemToReviewIriTemplate>;
  }

  // maps a json object with a list of ReviewRequestLinksItemToReviewIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksItemToReviewIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ReviewRequestLinksItemToReviewIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewRequestLinksItemToReviewIriTemplate.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksItemToReviewIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
