//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequestLinksItemToReview {
  /// Returns a new [ReviewRequestLinksItemToReview] instance.
  ReviewRequestLinksItemToReview({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewRequestLinksItemToReview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequestLinksItemToReview.fromJson(Map<String, dynamic> json) {
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
  String href;

  ReviewRequestLinksItemToReviewIriTemplate iriTemplate;

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

  static List<ReviewRequestLinksItemToReview> listFromJson(List<dynamic> json) {
    return <ReviewRequestLinksItemToReview>[
      if (json is List)
        for (dynamic value in json)
          ReviewRequestLinksItemToReview.fromJson(value),
    ];
  }

  static Map<String, ReviewRequestLinksItemToReview> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewRequestLinksItemToReview>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksItemToReview.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewRequestLinksItemToReview-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksItemToReview>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewRequestLinksItemToReview>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksItemToReview.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksItemToReview[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
