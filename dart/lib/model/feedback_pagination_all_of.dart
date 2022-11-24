//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackPaginationAllOf {
  /// Returns a new [FeedbackPaginationAllOf] instance.
  FeedbackPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [FeedbackPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackPaginationAllOf(
      embedded: FeedbackCollection.fromJson(json[r'_embedded']),
    );
  }

  FeedbackCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<FeedbackPaginationAllOf> listFromJson(List<dynamic> json) {
    return <FeedbackPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) FeedbackPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, FeedbackPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackPaginationAllOf-objects as value to a dart map
  static Map<String, List<FeedbackPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
