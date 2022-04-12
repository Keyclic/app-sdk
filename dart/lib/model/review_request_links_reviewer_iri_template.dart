//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksReviewerIriTemplate {
  /// Returns a new [ReviewRequestLinksReviewerIriTemplate] instance.
  ReviewRequestLinksReviewerIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksReviewerIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksReviewerIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReviewerIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewerIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewRequestLinksReviewerIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksReviewerIriTemplate>[];
    }
    return json
        .map((value) {
          return ReviewRequestLinksReviewerIriTemplate.fromJson(value);
        })
        .whereType<ReviewRequestLinksReviewerIriTemplate>()
        .toList();
  }

  static Map<String, ReviewRequestLinksReviewerIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksReviewerIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewRequestLinksReviewerIriTemplate?>(
            key, ReviewRequestLinksReviewerIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestLinksReviewerIriTemplate>;
  }

  // maps a json object with a list of ReviewRequestLinksReviewerIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksReviewerIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ReviewRequestLinksReviewerIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              ReviewRequestLinksReviewerIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksReviewerIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
