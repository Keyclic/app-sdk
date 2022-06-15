//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinks {
  /// Returns a new [ReviewRequestLinks] instance.
  ReviewRequestLinks({
    this.itemToReview,
    this.organization,
    this.review,
    this.reviewer,
    this.self,
  });

  /// Returns a new [ReviewRequestLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinks(
      itemToReview:
          ReviewRequestLinksItemToReview.fromJson(json[r'itemToReview']),
      organization:
          ReviewRequestLinksOrganization.fromJson(json[r'organization']),
      review: ReviewRequestLinksReview.fromJson(json[r'review']),
      reviewer: ReviewRequestLinksReviewer.fromJson(json[r'reviewer']),
      self: ReviewRequestLinksSelf.fromJson(json[r'self']),
    );
  }

  ReviewRequestLinksItemToReview? itemToReview;

  ReviewRequestLinksOrganization? organization;

  ReviewRequestLinksReview? review;

  ReviewRequestLinksReviewer? reviewer;

  ReviewRequestLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinks &&
        other.itemToReview == itemToReview &&
        other.organization == organization &&
        other.review == review &&
        other.reviewer == reviewer &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (itemToReview == null ? 0 : itemToReview.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (review == null ? 0 : review.hashCode) +
      (reviewer == null ? 0 : reviewer.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<ReviewRequestLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinks>[];
    }
    return json
        .map((value) {
          return ReviewRequestLinks.fromJson(value);
        })
        .whereType<ReviewRequestLinks>()
        .toList();
  }

  static Map<String, ReviewRequestLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinks>{};
    }

    final map = json.map((key, value) => MapEntry<String, ReviewRequestLinks?>(
        key, ReviewRequestLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestLinks>;
  }

  // maps a json object with a list of ReviewRequestLinks-objects as value to a dart map
  static Map<String, List<ReviewRequestLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewRequestLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewRequestLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinks[itemToReview=$itemToReview, organization=$organization, review=$review, reviewer=$reviewer, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (itemToReview != null) r'itemToReview': itemToReview,
      if (organization != null) r'organization': organization,
      if (review != null) r'review': review,
      if (reviewer != null) r'reviewer': reviewer,
      if (self != null) r'self': self,
    };
  }
}
