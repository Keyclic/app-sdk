//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestCollection {
  /// Returns a new [ReviewRequestCollection] instance.
  ReviewRequestCollection({
    this.items,
  });

  /// Returns a new [ReviewRequestCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRequestCollection(
      items: ReviewRequest.listFromJson(json[r'items']),
    );
  }

  List<ReviewRequest>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<ReviewRequestCollection> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewRequestCollection>[];
    }

    return json.fold(<ReviewRequestCollection>[],
        (List<ReviewRequestCollection> previousValue, element) {
      final ReviewRequestCollection? object =
          ReviewRequestCollection.fromJson(element);
      if (object is ReviewRequestCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestCollection>{};
    }

    return json.entries.fold(<String, ReviewRequestCollection>{},
        (Map<String, ReviewRequestCollection> previousValue, element) {
      final ReviewRequestCollection? object =
          ReviewRequestCollection.fromJson(element.value);
      if (object is ReviewRequestCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestCollection-objects as value to a dart map
  static Map<String, List<ReviewRequestCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestCollection>>(
          key, ReviewRequestCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewRequestCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
