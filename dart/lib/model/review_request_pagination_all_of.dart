//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestPaginationAllOf {
  /// Returns a new [ReviewRequestPaginationAllOf] instance.
  ReviewRequestPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ReviewRequestPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestPaginationAllOf(
      embedded: ReviewRequestCollection.fromJson(json[r'_embedded']),
    );
  }

  ReviewRequestCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ReviewRequestPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestPaginationAllOf>[];
    }
    return json
        .map((value) {
          return ReviewRequestPaginationAllOf.fromJson(value);
        })
        .whereType<ReviewRequestPaginationAllOf>()
        .toList();
  }

  static Map<String, ReviewRequestPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewRequestPaginationAllOf?>(
            key, ReviewRequestPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestPaginationAllOf>;
  }

  // maps a json object with a list of ReviewRequestPaginationAllOf-objects as value to a dart map
  static Map<String, List<ReviewRequestPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewRequestPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewRequestPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewRequestPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
