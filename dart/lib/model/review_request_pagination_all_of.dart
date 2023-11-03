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

    return json.fold(<ReviewRequestPaginationAllOf>[],
        (List<ReviewRequestPaginationAllOf> previousValue, element) {
      final ReviewRequestPaginationAllOf? object =
          ReviewRequestPaginationAllOf.fromJson(element);
      if (object is ReviewRequestPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestPaginationAllOf>{};
    }

    return json.entries.fold(<String, ReviewRequestPaginationAllOf>{},
        (Map<String, ReviewRequestPaginationAllOf> previousValue, element) {
      final ReviewRequestPaginationAllOf? object =
          ReviewRequestPaginationAllOf.fromJson(element.value);
      if (object is ReviewRequestPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestPaginationAllOf-objects as value to a dart map
  static Map<String, List<ReviewRequestPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestPaginationAllOf>>(
          key, ReviewRequestPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewRequestPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
