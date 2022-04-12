//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewPaginationAllOf {
  /// Returns a new [ReviewPaginationAllOf] instance.
  ReviewPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ReviewPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewPaginationAllOf(
      embedded: ReviewCollection.fromJson(json[r'_embedded']),
    );
  }

  ReviewCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ReviewPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewPaginationAllOf>[];
    }
    return json
        .map((value) {
          return ReviewPaginationAllOf.fromJson(value);
        })
        .whereType<ReviewPaginationAllOf>()
        .toList();
  }

  static Map<String, ReviewPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewPaginationAllOf?>(
            key, ReviewPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewPaginationAllOf>;
  }

  // maps a json object with a list of ReviewPaginationAllOf-objects as value to a dart map
  static Map<String, List<ReviewPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
