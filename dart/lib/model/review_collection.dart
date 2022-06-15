//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewCollection {
  /// Returns a new [ReviewCollection] instance.
  ReviewCollection({
    this.items = const [],
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
    return json
        .map((value) {
          return ReviewCollection.fromJson(value);
        })
        .whereType<ReviewCollection>()
        .toList();
  }

  static Map<String, ReviewCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, ReviewCollection?>(
        key, ReviewCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewCollection>;
  }

  // maps a json object with a list of ReviewCollection-objects as value to a dart map
  static Map<String, List<ReviewCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
