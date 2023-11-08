//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksItemToReview {
  /// Returns a new [ReviewRequestLinksItemToReview] instance.
  ReviewRequestLinksItemToReview({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewRequestLinksItemToReview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksItemToReview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksItemToReview(
      href: json[r'href'],
      iriTemplate: ReviewRequestLinksItemToReviewIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the itemToReview associated to the given reviewrequest.
  String? href;

  ReviewRequestLinksItemToReviewIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksItemToReview &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewRequestLinksItemToReview> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksItemToReview>[];
    }

    return json.fold(<ReviewRequestLinksItemToReview>[],
        (List<ReviewRequestLinksItemToReview> previousValue, element) {
      final ReviewRequestLinksItemToReview? object =
          ReviewRequestLinksItemToReview.fromJson(element);
      if (object is ReviewRequestLinksItemToReview) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksItemToReview> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksItemToReview>{};
    }

    return json.entries.fold(<String, ReviewRequestLinksItemToReview>{},
        (Map<String, ReviewRequestLinksItemToReview> previousValue, element) {
      final ReviewRequestLinksItemToReview? object =
          ReviewRequestLinksItemToReview.fromJson(element.value);
      if (object is ReviewRequestLinksItemToReview) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksItemToReview-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksItemToReview>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksItemToReview>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksItemToReview>>(
          key, ReviewRequestLinksItemToReview.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksItemToReview[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
