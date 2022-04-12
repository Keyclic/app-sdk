//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequestLinksReviewIriTemplate {
  /// Returns a new [ReviewRequestLinksReviewIriTemplate] instance.
  ReviewRequestLinksReviewIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksReviewIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequestLinksReviewIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReviewIriTemplate(
      mapping: ReviewLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ReviewLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewRequestLinksReviewIriTemplate> listFromJson(
      List<dynamic> json) {
    return <ReviewRequestLinksReviewIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ReviewRequestLinksReviewIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReviewRequestLinksReviewIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewRequestLinksReviewIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksReviewIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewRequestLinksReviewIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksReviewIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewRequestLinksReviewIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ReviewRequestLinksReviewIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewRequestLinksReviewIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
