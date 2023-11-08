//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackCollection {
  /// Returns a new [FeedbackCollection] instance.
  FeedbackCollection({
    this.items,
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

    return json.fold(<FeedbackCollection>[],
        (List<FeedbackCollection> previousValue, element) {
      final FeedbackCollection? object = FeedbackCollection.fromJson(element);
      if (object is FeedbackCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackCollection>{};
    }

    return json.entries.fold(<String, FeedbackCollection>{},
        (Map<String, FeedbackCollection> previousValue, element) {
      final FeedbackCollection? object =
          FeedbackCollection.fromJson(element.value);
      if (object is FeedbackCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackCollection-objects as value to a dart map
  static Map<String, List<FeedbackCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackCollection>>(
          key, FeedbackCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
