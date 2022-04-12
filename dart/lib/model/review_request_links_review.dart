//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksReview {
  /// Returns a new [ReviewRequestLinksReview] instance.
  ReviewRequestLinksReview({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewRequestLinksReview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksReview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReview(
      href: json[r'href'],
      iriTemplate:
          ReviewRequestLinksReviewIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the review associated to the given reviewrequest.
  String? href;

  ReviewRequestLinksReviewIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReview &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewRequestLinksReview> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksReview>[];
    }
    return json
        .map((value) {
          return ReviewRequestLinksReview.fromJson(value);
        })
        .whereType<ReviewRequestLinksReview>()
        .toList();
  }

  static Map<String, ReviewRequestLinksReview> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksReview>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewRequestLinksReview?>(
            key, ReviewRequestLinksReview.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestLinksReview>;
  }

  // maps a json object with a list of ReviewRequestLinksReview-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksReview>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewRequestLinksReview>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewRequestLinksReview.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksReview[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
