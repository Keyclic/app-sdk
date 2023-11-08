//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewLinksItemReviewed {
  /// Returns a new [ReviewLinksItemReviewed] instance.
  ReviewLinksItemReviewed({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewLinksItemReviewed] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewLinksItemReviewed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksItemReviewed(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : ReviewLinksItemReviewedIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the itemReviewed associated to the given review.
  String? href;

  ReviewLinksItemReviewedIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksItemReviewed &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewLinksItemReviewed> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ReviewLinksItemReviewed>[];
    }

    return json.fold(<ReviewLinksItemReviewed>[],
        (List<ReviewLinksItemReviewed> previousValue, element) {
      final ReviewLinksItemReviewed? object =
          ReviewLinksItemReviewed.fromJson(element);
      if (object is ReviewLinksItemReviewed) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewLinksItemReviewed> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksItemReviewed>{};
    }

    return json.entries.fold(<String, ReviewLinksItemReviewed>{},
        (Map<String, ReviewLinksItemReviewed> previousValue, element) {
      final ReviewLinksItemReviewed? object =
          ReviewLinksItemReviewed.fromJson(element.value);
      if (object is ReviewLinksItemReviewed) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewLinksItemReviewed-objects as value to a dart map
  static Map<String, List<ReviewLinksItemReviewed>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewLinksItemReviewed>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewLinksItemReviewed>>(
          key, ReviewLinksItemReviewed.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewLinksItemReviewed[href=$href, iriTemplate=$iriTemplate]';

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
