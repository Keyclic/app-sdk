//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewLinksAuthor {
  /// Returns a new [ReviewLinksAuthor] instance.
  ReviewLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewLinksAuthor] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewLinksAuthor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksAuthor(
      href: json[r'href'],
      iriTemplate: ReviewLinksAuthorIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the author associated to the given review.
  String? href;

  ReviewLinksAuthorIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksAuthor &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewLinksAuthor> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewLinksAuthor>[];
    }

    return json.fold(<ReviewLinksAuthor>[],
        (List<ReviewLinksAuthor> previousValue, element) {
      final ReviewLinksAuthor? object = ReviewLinksAuthor.fromJson(element);
      if (object is ReviewLinksAuthor) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewLinksAuthor> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksAuthor>{};
    }

    return json.entries.fold(<String, ReviewLinksAuthor>{},
        (Map<String, ReviewLinksAuthor> previousValue, element) {
      final ReviewLinksAuthor? object =
          ReviewLinksAuthor.fromJson(element.value);
      if (object is ReviewLinksAuthor) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewLinksAuthor-objects as value to a dart map
  static Map<String, List<ReviewLinksAuthor>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewLinksAuthor>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewLinksAuthor>>(
          key, ReviewLinksAuthor.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewLinksAuthor[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
