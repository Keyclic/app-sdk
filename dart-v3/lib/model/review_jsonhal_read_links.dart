//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewJsonhalReadLinks {
  /// Returns a new [ReviewJsonhalReadLinks] instance.
  ReviewJsonhalReadLinks({
    this.self,
    this.itemReviewed,
    this.author,
  });

  /// Returns a new [ReviewJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      itemReviewed: AssetJsonhalReadLinksType.fromJson(json[r'itemReviewed']),
      author: AssetJsonhalReadLinksType.fromJson(json[r'author']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  AssetJsonhalReadLinksType? itemReviewed;

  AssetJsonhalReadLinksType? author;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewJsonhalReadLinks &&
        other.self == self &&
        other.itemReviewed == itemReviewed &&
        other.author == author;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (itemReviewed == null ? 0 : itemReviewed.hashCode) +
      (author == null ? 0 : author.hashCode);

  static List<ReviewJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewJsonhalReadLinks>[];
    }

    return json.fold(<ReviewJsonhalReadLinks>[],
        (List<ReviewJsonhalReadLinks> previousValue, element) {
      final ReviewJsonhalReadLinks? object =
          ReviewJsonhalReadLinks.fromJson(element);
      if (object is ReviewJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, ReviewJsonhalReadLinks>{},
        (Map<String, ReviewJsonhalReadLinks> previousValue, element) {
      final ReviewJsonhalReadLinks? object =
          ReviewJsonhalReadLinks.fromJson(element.value);
      if (object is ReviewJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<ReviewJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewJsonhalReadLinks>>(
          key, ReviewJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewJsonhalReadLinks[self=$self, itemReviewed=$itemReviewed, author=$author]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
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
      if (keys == null || keys.any((key) => RegExp(r'^author\.').hasMatch(key)))
        r'author': author?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^author\.'))) {
            previousValue.add(element.split(RegExp(r'^author\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
