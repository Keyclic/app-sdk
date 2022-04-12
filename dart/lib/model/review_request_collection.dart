//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestCollection {
  /// Returns a new [ReviewRequestCollection] instance.
  ReviewRequestCollection({
    this.items = const [],
  });

  /// Returns a new [ReviewRequestCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

  static List<ReviewRequestCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestCollection>[];
    }
    return json
        .map((value) {
          return ReviewRequestCollection.fromJson(value);
        })
        .whereType<ReviewRequestCollection>()
        .toList();
  }

  static Map<String, ReviewRequestCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestCollection>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewRequestCollection?>(
            key, ReviewRequestCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestCollection>;
  }

  // maps a json object with a list of ReviewRequestCollection-objects as value to a dart map
  static Map<String, List<ReviewRequestCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewRequestCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewRequestCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewRequestCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
