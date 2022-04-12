//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewLinksItemReviewedIriTemplate {
  /// Returns a new [ReviewLinksItemReviewedIriTemplate] instance.
  ReviewLinksItemReviewedIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewLinksItemReviewedIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewLinksItemReviewedIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksItemReviewedIriTemplate(
      mapping: ContributionLinksFeedbackIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksFeedbackIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksItemReviewedIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewLinksItemReviewedIriTemplate> listFromJson(
      List<dynamic> json) {
    return <ReviewLinksItemReviewedIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ReviewLinksItemReviewedIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReviewLinksItemReviewedIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewLinksItemReviewedIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinksItemReviewedIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewLinksItemReviewedIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewLinksItemReviewedIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewLinksItemReviewedIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ReviewLinksItemReviewedIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewLinksItemReviewedIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
