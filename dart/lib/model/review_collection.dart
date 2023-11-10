//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewCollection {
  /// Returns a new [ReviewCollection] instance.
  ReviewCollection({
    this.items,
  });

  /// Returns a new [ReviewCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewCollection(
      items: Review.listFromJson(json[r'items']),
    );
  }

  List<Review>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<ReviewCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewCollection>[];
    }

    return json.fold(<ReviewCollection>[],
        (List<ReviewCollection> previousValue, element) {
      final ReviewCollection? object = ReviewCollection.fromJson(element);
      if (object is ReviewCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewCollection>{};
    }

    return json.entries.fold(<String, ReviewCollection>{},
        (Map<String, ReviewCollection> previousValue, element) {
      final ReviewCollection? object = ReviewCollection.fromJson(element.value);
      if (object is ReviewCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewCollection-objects as value to a dart map
  static Map<String, List<ReviewCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewCollection>>(
          key, ReviewCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
