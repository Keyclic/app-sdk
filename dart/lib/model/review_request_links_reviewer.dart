//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksReviewer {
  /// Returns a new [ReviewRequestLinksReviewer] instance.
  ReviewRequestLinksReviewer({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewRequestLinksReviewer] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksReviewer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReviewer(
      href: json[r'href'],
      iriTemplate:
          ReviewRequestLinksReviewerIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the reviewer associated to the given reviewrequest.
  String? href;

  ReviewRequestLinksReviewerIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewer &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewRequestLinksReviewer> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksReviewer>[];
    }
    return json
        .map((value) {
          return ReviewRequestLinksReviewer.fromJson(value);
        })
        .whereType<ReviewRequestLinksReviewer>()
        .toList();
  }

  static Map<String, ReviewRequestLinksReviewer> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksReviewer>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewRequestLinksReviewer?>(
            key, ReviewRequestLinksReviewer.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestLinksReviewer>;
  }

  // maps a json object with a list of ReviewRequestLinksReviewer-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksReviewer>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewRequestLinksReviewer>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewRequestLinksReviewer.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksReviewer[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
