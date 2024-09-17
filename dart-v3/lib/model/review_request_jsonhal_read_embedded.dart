//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewRequestJsonhalReadEmbedded {
  /// Returns a new [ReviewRequestJsonhalReadEmbedded] instance.
  ReviewRequestJsonhalReadEmbedded({
    this.review,
  });

  /// Returns a new [ReviewRequestJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRequestJsonhalReadEmbedded(
      review: ReviewJsonhalRead.fromJson(json[r'review']),
    );
  }

  ReviewJsonhalRead? review;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestJsonhalReadEmbedded && other.review == review;
  }

  @override
  int get hashCode => (review == null ? 0 : review.hashCode);

  static List<ReviewRequestJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewRequestJsonhalReadEmbedded>[];
    }

    return json.fold(<ReviewRequestJsonhalReadEmbedded>[],
        (List<ReviewRequestJsonhalReadEmbedded> previousValue, element) {
      final ReviewRequestJsonhalReadEmbedded? object =
          ReviewRequestJsonhalReadEmbedded.fromJson(element);
      if (object is ReviewRequestJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, ReviewRequestJsonhalReadEmbedded>{},
        (Map<String, ReviewRequestJsonhalReadEmbedded> previousValue, element) {
      final ReviewRequestJsonhalReadEmbedded? object =
          ReviewRequestJsonhalReadEmbedded.fromJson(element.value);
      if (object is ReviewRequestJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<ReviewRequestJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestJsonhalReadEmbedded>>(
          key, ReviewRequestJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewRequestJsonhalReadEmbedded[review=$review]';

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
