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
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : ReviewRequestLinksReviewerIriTemplate.fromJson(
              json[r'iriTemplate']),
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

  static List<ReviewRequestLinksReviewer> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksReviewer>[];
    }

    return json.fold(<ReviewRequestLinksReviewer>[],
        (List<ReviewRequestLinksReviewer> previousValue, element) {
      final ReviewRequestLinksReviewer? object =
          ReviewRequestLinksReviewer.fromJson(element);
      if (object is ReviewRequestLinksReviewer) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksReviewer> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksReviewer>{};
    }

    return json.entries.fold(<String, ReviewRequestLinksReviewer>{},
        (Map<String, ReviewRequestLinksReviewer> previousValue, element) {
      final ReviewRequestLinksReviewer? object =
          ReviewRequestLinksReviewer.fromJson(element.value);
      if (object is ReviewRequestLinksReviewer) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksReviewer-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksReviewer>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksReviewer>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksReviewer>>(
          key, ReviewRequestLinksReviewer.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksReviewer[href=$href, iriTemplate=$iriTemplate]';

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
