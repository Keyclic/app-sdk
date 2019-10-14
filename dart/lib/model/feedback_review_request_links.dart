part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinks {
  FeedbackReviewRequestLinks({
    this.itemToReview,
    this.organization,
    this.review,
    this.reviewer,
    this.self,
  });

  FeedbackReviewRequestLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    itemToReview =
        FeedbackReviewRequestLinksItemToReview.fromJson(json['itemToReview']);
    organization =
        FeedbackReviewRequestLinksOrganization.fromJson(json['organization']);
    review = FeedbackReviewRequestLinksReview.fromJson(json['review']);
    reviewer = FeedbackReviewRequestLinksReviewer.fromJson(json['reviewer']);
    self = FeedbackReviewRequestLinksSelf.fromJson(json['self']);
  }

  FeedbackReviewRequestLinksItemToReview itemToReview;

  FeedbackReviewRequestLinksOrganization organization;

  FeedbackReviewRequestLinksReview review;

  FeedbackReviewRequestLinksReviewer reviewer;

  FeedbackReviewRequestLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinks &&
        runtimeType == other.runtimeType &&
        itemToReview == other.itemToReview &&
        organization == other.organization &&
        review == other.review &&
        reviewer == other.reviewer &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= itemToReview?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= review?.hashCode ?? 0;
    hashCode ^= reviewer?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackReviewRequestLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinks>[]
        : json
            .map((dynamic value) => FeedbackReviewRequestLinks.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinks> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (itemToReview != null) 'itemToReview': itemToReview,
      if (organization != null) 'organization': organization,
      if (review != null) 'review': review,
      if (reviewer != null) 'reviewer': reviewer,
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinks[itemToReview=$itemToReview, organization=$organization, review=$review, reviewer=$reviewer, self=$self, ]';
  }
}
