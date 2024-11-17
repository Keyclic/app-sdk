//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewRequestJsonhalReadLinks {
  /// Returns a new [ReviewRequestJsonhalReadLinks] instance.
  ReviewRequestJsonhalReadLinks({
    this.self,
    this.itemToReview,
    this.reviewer,
    this.organization,
  });

  /// Returns a new [ReviewRequestJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRequestJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      itemToReview: GetPlaceCollection200ResponseLinksFirst.fromJson(
          json[r'itemToReview']),
      reviewer:
          GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'reviewer']),
      organization: GetPlaceCollection200ResponseLinksSelf.fromJson(
          json[r'organization']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksFirst? itemToReview;

  GetPlaceCollection200ResponseLinksSelf? reviewer;

  GetPlaceCollection200ResponseLinksSelf? organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestJsonhalReadLinks &&
        other.self == self &&
        other.itemToReview == itemToReview &&
        other.reviewer == reviewer &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (itemToReview == null ? 0 : itemToReview.hashCode) +
      (reviewer == null ? 0 : reviewer.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<ReviewRequestJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewRequestJsonhalReadLinks>[];
    }

    return json.fold(<ReviewRequestJsonhalReadLinks>[],
        (List<ReviewRequestJsonhalReadLinks> previousValue, element) {
      final ReviewRequestJsonhalReadLinks? object =
          ReviewRequestJsonhalReadLinks.fromJson(element);
      if (object is ReviewRequestJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, ReviewRequestJsonhalReadLinks>{},
        (Map<String, ReviewRequestJsonhalReadLinks> previousValue, element) {
      final ReviewRequestJsonhalReadLinks? object =
          ReviewRequestJsonhalReadLinks.fromJson(element.value);
      if (object is ReviewRequestJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<ReviewRequestJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestJsonhalReadLinks>>(
          key, ReviewRequestJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestJsonhalReadLinks[self=$self, itemToReview=$itemToReview, reviewer=$reviewer, organization=$organization]';

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
          keys.any((key) => RegExp(r'^itemToReview\.').hasMatch(key)))
        r'itemToReview': itemToReview?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^itemToReview\.'))) {
            previousValue.add(element.split(RegExp(r'^itemToReview\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^reviewer\.').hasMatch(key)))
        r'reviewer': reviewer?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^reviewer\.'))) {
            previousValue.add(element.split(RegExp(r'^reviewer\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
