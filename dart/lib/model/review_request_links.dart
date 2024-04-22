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
  static ReviewRequestLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ReviewRequestLinks> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^itemToReview\.').hasMatch(key)))
        r'itemToReview': itemToReview?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^itemToReview\.'))) {
            previousValue.add(element.split(RegExp(r'^itemToReview\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^review\.').hasMatch(key)))
        r'review': review?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^review\.'))) {
            previousValue.add(element.split(RegExp(r'^review\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^reviewer\.').hasMatch(key)))
        r'reviewer': reviewer?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^reviewer\.'))) {
            previousValue.add(element.split(RegExp(r'^reviewer\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
