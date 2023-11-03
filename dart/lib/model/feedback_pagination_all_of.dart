//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackPaginationAllOf {
  /// Returns a new [FeedbackPaginationAllOf] instance.
  FeedbackPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [FeedbackPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackPaginationAllOf(
      embedded: FeedbackCollection.fromJson(json[r'_embedded']),
    );
  }

  FeedbackCollection? embedded;

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

  static List<FeedbackPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackPaginationAllOf>[];
    }

    return json.fold(<FeedbackPaginationAllOf>[],
        (List<FeedbackPaginationAllOf> previousValue, element) {
      final FeedbackPaginationAllOf? object =
          FeedbackPaginationAllOf.fromJson(element);
      if (object is FeedbackPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackPaginationAllOf>{};
    }

    return json.entries.fold(<String, FeedbackPaginationAllOf>{},
        (Map<String, FeedbackPaginationAllOf> previousValue, element) {
      final FeedbackPaginationAllOf? object =
          FeedbackPaginationAllOf.fromJson(element.value);
      if (object is FeedbackPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackPaginationAllOf-objects as value to a dart map
  static Map<String, List<FeedbackPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackPaginationAllOf>>(
          key, FeedbackPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
