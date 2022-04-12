//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewLinks {
  /// Returns a new [ReviewLinks] instance.
  ReviewLinks({
    this.author,
    this.itemReviewed,
    this.self,
  });

  /// Returns a new [ReviewLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinks(
      author: ReviewLinksAuthor.fromJson(json[r'author']),
      itemReviewed: ReviewLinksItemReviewed.fromJson(json[r'itemReviewed']),
      self: ReviewLinksSelf.fromJson(json[r'self']),
    );
  }

  ReviewLinksAuthor author;

  ReviewLinksItemReviewed itemReviewed;

  ReviewLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinks &&
        other.author == author &&
        other.itemReviewed == itemReviewed &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (author == null ? 0 : author.hashCode) +
      (itemReviewed == null ? 0 : itemReviewed.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<ReviewLinks> listFromJson(List<dynamic> json) {
    return <ReviewLinks>[
      if (json is List)
        for (dynamic value in json) ReviewLinks.fromJson(value),
    ];
  }

  static Map<String, ReviewLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, ReviewLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewLinks-objects as value to a dart map
  static Map<String, List<ReviewLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewLinks[author=$author, itemReviewed=$itemReviewed, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (author != null) r'author': author,
      if (itemReviewed != null) r'itemReviewed': itemReviewed,
      if (self != null) r'self': self,
    };
  }
}
