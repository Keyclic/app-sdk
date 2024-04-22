//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static ReviewLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewLinks(
      author: ReviewLinksAuthor.fromJson(json[r'author']),
      itemReviewed: ReviewLinksItemReviewed.fromJson(json[r'itemReviewed']),
      self: ReviewLinksSelf.fromJson(json[r'self']),
    );
  }

  ReviewLinksAuthor? author;

  ReviewLinksItemReviewed? itemReviewed;

  ReviewLinksSelf? self;

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

  static List<ReviewLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewLinks>[];
    }

    return json.fold(<ReviewLinks>[],
        (List<ReviewLinks> previousValue, element) {
      final ReviewLinks? object = ReviewLinks.fromJson(element);
      if (object is ReviewLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinks>{};
    }

    return json.entries.fold(<String, ReviewLinks>{},
        (Map<String, ReviewLinks> previousValue, element) {
      final ReviewLinks? object = ReviewLinks.fromJson(element.value);
      if (object is ReviewLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewLinks-objects as value to a dart map
  static Map<String, List<ReviewLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewLinks>>(
          key, ReviewLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewLinks[author=$author, itemReviewed=$itemReviewed, self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^author\.').hasMatch(key)))
        r'author': author?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^author\.'))) {
            previousValue.add(element.split(RegExp(r'^author\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^itemReviewed\.').hasMatch(key)))
        r'itemReviewed': itemReviewed?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^itemReviewed\.'))) {
            previousValue.add(element.split(RegExp(r'^itemReviewed\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
