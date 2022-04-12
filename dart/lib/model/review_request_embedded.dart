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
  static ReviewRequestEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

  static List<ReviewRequestEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestEmbedded>[];
    }
    return json
        .map((value) {
          return ReviewRequestEmbedded.fromJson(value);
        })
        .whereType<ReviewRequestEmbedded>()
        .toList();
  }

  static Map<String, ReviewRequestEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestEmbedded>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewRequestEmbedded?>(
            key, ReviewRequestEmbedded.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestEmbedded>;
  }

  // maps a json object with a list of ReviewRequestEmbedded-objects as value to a dart map
  static Map<String, List<ReviewRequestEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewRequestEmbedded>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewRequestEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewRequestEmbedded[review=$review]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (review != null) r'review': review,
    };
  }
}
