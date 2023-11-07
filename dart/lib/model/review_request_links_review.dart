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
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : ReviewRequestLinksReviewIriTemplate.fromJson(json[r'iriTemplate']),
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

    return json.fold(<ReviewRequestLinksReview>[],
        (List<ReviewRequestLinksReview> previousValue, element) {
      final ReviewRequestLinksReview? object =
          ReviewRequestLinksReview.fromJson(element);
      if (object is ReviewRequestLinksReview) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksReview> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksReview>{};
    }

    return json.entries.fold(<String, ReviewRequestLinksReview>{},
        (Map<String, ReviewRequestLinksReview> previousValue, element) {
      final ReviewRequestLinksReview? object =
          ReviewRequestLinksReview.fromJson(element.value);
      if (object is ReviewRequestLinksReview) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksReview-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksReview>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksReview>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksReview>>(
          key, ReviewRequestLinksReview.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksReview[href=$href, iriTemplate=$iriTemplate]';

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
