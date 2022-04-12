//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequestPaginationAllOf {
  /// Returns a new [ReviewRequestPaginationAllOf] instance.
  ReviewRequestPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ReviewRequestPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequestPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestPaginationAllOf(
      embedded: ReviewRequestCollection.fromJson(json[r'_embedded']),
    );
  }

  ReviewRequestCollection embedded;

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

  static List<ReviewRequestPaginationAllOf> listFromJson(List<dynamic> json) {
    return <ReviewRequestPaginationAllOf>[
      if (json is List)
        for (dynamic value in json)
          ReviewRequestPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, ReviewRequestPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewRequestPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewRequestPaginationAllOf-objects as value to a dart map
  static Map<String, List<ReviewRequestPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewRequestPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
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
