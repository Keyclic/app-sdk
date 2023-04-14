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

    return json.fold(<ReviewPaginationAllOf>[],
        (List<ReviewPaginationAllOf> previousValue, element) {
      final ReviewPaginationAllOf? object =
          ReviewPaginationAllOf.fromJson(element);
      if (object is ReviewPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewPaginationAllOf>{};
    }

    return json.entries.fold(<String, ReviewPaginationAllOf>{},
        (Map<String, ReviewPaginationAllOf> previousValue, element) {
      final ReviewPaginationAllOf? object =
          ReviewPaginationAllOf.fromJson(element.value);
      if (object is ReviewPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewPaginationAllOf-objects as value to a dart map
  static Map<String, List<ReviewPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewPaginationAllOf>>(
          key, ReviewPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
