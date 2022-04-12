//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewPaginationAllOf {
  /// Returns a new [ReviewPaginationAllOf] instance.
  ReviewPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ReviewPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewPaginationAllOf(
      embedded: ReviewCollection.fromJson(json[r'_embedded']),
    );
  }

  ReviewCollection embedded;

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

  static List<ReviewPaginationAllOf> listFromJson(List<dynamic> json) {
    return <ReviewPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) ReviewPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, ReviewPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewPaginationAllOf-objects as value to a dart map
  static Map<String, List<ReviewPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
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
