//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewLinksAuthor {
  /// Returns a new [ReviewLinksAuthor] instance.
  ReviewLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewLinksAuthor] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewLinksAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksAuthor(
      href: json[r'href'],
      iriTemplate: ReviewLinksAuthorIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the author associated to the given review.
  String href;

  ReviewLinksAuthorIriTemplate iriTemplate;

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

  static List<ReviewLinksAuthor> listFromJson(List<dynamic> json) {
    return <ReviewLinksAuthor>[
      if (json is List)
        for (dynamic value in json) ReviewLinksAuthor.fromJson(value),
    ];
  }

  static Map<String, ReviewLinksAuthor> mapFromJson(Map<String, dynamic> json) {
    return <String, ReviewLinksAuthor>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinksAuthor.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewLinksAuthor-objects as value to a dart map
  static Map<String, List<ReviewLinksAuthor>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewLinksAuthor>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinksAuthor.listFromJson(entry.value),
    };
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
