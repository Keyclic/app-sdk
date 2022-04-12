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
      iriTemplate:
          ReviewLinksItemReviewedIriTemplate.fromJson(json[r'iriTemplate']),
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

  static List<ReviewLinksItemReviewed> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewLinksItemReviewed>[];
    }
    return json
        .map((value) {
          return ReviewLinksItemReviewed.fromJson(value);
        })
        .whereType<ReviewLinksItemReviewed>()
        .toList();
  }

  static Map<String, ReviewLinksItemReviewed> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksItemReviewed>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewLinksItemReviewed?>(
            key, ReviewLinksItemReviewed.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewLinksItemReviewed>;
  }

  // maps a json object with a list of ReviewLinksItemReviewed-objects as value to a dart map
  static Map<String, List<ReviewLinksItemReviewed>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewLinksItemReviewed>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewLinksItemReviewed.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewLinksItemReviewed[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
