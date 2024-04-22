//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestEmbedded {
  /// Returns a new [ReviewRequestEmbedded] instance.
  ReviewRequestEmbedded({
    this.review,
  });

  /// Returns a new [ReviewRequestEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRequestEmbedded(
      review: Review.fromJson(json[r'review']),
    );
  }

  Review? review;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestEmbedded && other.review == review;
  }

  @override
  int get hashCode => (review == null ? 0 : review.hashCode);

  static List<ReviewRequestEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewRequestEmbedded>[];
    }

    return json.fold(<ReviewRequestEmbedded>[],
        (List<ReviewRequestEmbedded> previousValue, element) {
      final ReviewRequestEmbedded? object =
          ReviewRequestEmbedded.fromJson(element);
      if (object is ReviewRequestEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestEmbedded>{};
    }

    return json.entries.fold(<String, ReviewRequestEmbedded>{},
        (Map<String, ReviewRequestEmbedded> previousValue, element) {
      final ReviewRequestEmbedded? object =
          ReviewRequestEmbedded.fromJson(element.value);
      if (object is ReviewRequestEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestEmbedded-objects as value to a dart map
  static Map<String, List<ReviewRequestEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestEmbedded>>(
          key, ReviewRequestEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewRequestEmbedded[review=$review]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^review\.').hasMatch(key)))
        r'review': review?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^review\.'))) {
            previousValue.add(element.split(RegExp(r'^review\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
