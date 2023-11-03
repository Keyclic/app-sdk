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

    return json.fold(<ReviewRequestLinks>[],
        (List<ReviewRequestLinks> previousValue, element) {
      final ReviewRequestLinks? object = ReviewRequestLinks.fromJson(element);
      if (object is ReviewRequestLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinks>{};
    }

    return json.entries.fold(<String, ReviewRequestLinks>{},
        (Map<String, ReviewRequestLinks> previousValue, element) {
      final ReviewRequestLinks? object =
          ReviewRequestLinks.fromJson(element.value);
      if (object is ReviewRequestLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinks-objects as value to a dart map
  static Map<String, List<ReviewRequestLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinks>>(
          key, ReviewRequestLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinks[itemToReview=$itemToReview, organization=$organization, review=$review, reviewer=$reviewer, self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && itemToReview != null) ||
          (keys?.contains(r'itemToReview') ?? false))
        r'itemToReview': itemToReview?.toJson(),
      if ((keys == null && organization != null) ||
          (keys?.contains(r'organization') ?? false))
        r'organization': organization?.toJson(),
      if ((keys == null && review != null) ||
          (keys?.contains(r'review') ?? false))
        r'review': review?.toJson(),
      if ((keys == null && reviewer != null) ||
          (keys?.contains(r'reviewer') ?? false))
        r'reviewer': reviewer?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
