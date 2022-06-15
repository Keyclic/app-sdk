//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackCollection {
  /// Returns a new [FeedbackCollection] instance.
  FeedbackCollection({
    this.items = const [],
  });

  /// Returns a new [FeedbackCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackCollection(
      items: Feedback.listFromJson(json[r'items']),
    );
  }

  List<Feedback>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<FeedbackCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackCollection>[];
    }
    return json
        .map((value) {
          return FeedbackCollection.fromJson(value);
        })
        .whereType<FeedbackCollection>()
        .toList();
  }

  static Map<String, FeedbackCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, FeedbackCollection?>(
        key, FeedbackCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackCollection>;
  }

  // maps a json object with a list of FeedbackCollection-objects as value to a dart map
  static Map<String, List<FeedbackCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: FeedbackCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
