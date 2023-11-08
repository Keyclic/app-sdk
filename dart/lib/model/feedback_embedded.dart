//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackEmbedded {
  /// Returns a new [FeedbackEmbedded] instance.
  FeedbackEmbedded({
    this.category,
    this.markers = const [],
    this.reporter,
    this.stateTransitions = const [],
    this.tracking,
  });

  /// Returns a new [FeedbackEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackEmbedded(
      category: json[r'category'] is! Map
          ? null
          : Category.fromJson(json[r'category']),
      markers: json[r'markers'] is! Iterable
          ? null
          : Marker.listFromJson(json[r'markers']),
      reporter:
          json[r'reporter'] is! Map ? null : Person.fromJson(json[r'reporter']),
      stateTransitions: json[r'stateTransitions'] == null
          ? null
          : List<String>.from(json[r'stateTransitions']),
      tracking: json[r'tracking'],
    );
  }

  Category? category;

  List<Marker>? markers;

  Person? reporter;

  List<String>? stateTransitions;

  String? tracking;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackEmbedded &&
        other.category == category &&
        DeepCollectionEquality.unordered().equals(markers, other.markers) &&
        other.reporter == reporter &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
        other.tracking == tracking;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (markers == null ? 0 : markers.hashCode) +
      (reporter == null ? 0 : reporter.hashCode) +
      (stateTransitions == null ? 0 : stateTransitions.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<FeedbackEmbedded> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <FeedbackEmbedded>[];
    }

    return json.fold(<FeedbackEmbedded>[],
        (List<FeedbackEmbedded> previousValue, element) {
      final FeedbackEmbedded? object = FeedbackEmbedded.fromJson(element);
      if (object is FeedbackEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackEmbedded>{};
    }

    return json.entries.fold(<String, FeedbackEmbedded>{},
        (Map<String, FeedbackEmbedded> previousValue, element) {
      final FeedbackEmbedded? object = FeedbackEmbedded.fromJson(element.value);
      if (object is FeedbackEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackEmbedded-objects as value to a dart map
  static Map<String, List<FeedbackEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackEmbedded>>(
          key, FeedbackEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackEmbedded[category=$category, markers=$markers, reporter=$reporter, stateTransitions=$stateTransitions, tracking=$tracking]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && category != null) ||
          (keys?.contains(r'category') ?? false))
        r'category': category?.toJson(),
      if ((keys == null && markers != null) ||
          (keys?.contains(r'markers') ?? false))
        r'markers': markers,
      if ((keys == null && reporter != null) ||
          (keys?.contains(r'reporter') ?? false))
        r'reporter': reporter?.toJson(),
      if ((keys == null && stateTransitions != null) ||
          (keys?.contains(r'stateTransitions') ?? false))
        r'stateTransitions': stateTransitions,
      if ((keys == null && tracking != null) ||
          (keys?.contains(r'tracking') ?? false))
        r'tracking': tracking,
    };
  }
}
