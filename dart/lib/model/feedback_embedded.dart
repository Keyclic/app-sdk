//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory FeedbackEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackEmbedded(
      category: Category.fromJson(json[r'category']),
      markers: Marker.listFromJson(json[r'markers']),
      reporter: Person.fromJson(json[r'reporter']),
      stateTransitions: List<String>.from(json[r'stateTransitions'] ?? []),
      tracking: json[r'tracking'],
    );
  }

  Category category;

  List<Marker> markers;

  Person reporter;

  List<String> stateTransitions;

  String tracking;

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

  static List<FeedbackEmbedded> listFromJson(List<dynamic> json) {
    return <FeedbackEmbedded>[
      if (json is List)
        for (dynamic value in json) FeedbackEmbedded.fromJson(value),
    ];
  }

  static Map<String, FeedbackEmbedded> mapFromJson(Map<String, dynamic> json) {
    return <String, FeedbackEmbedded>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackEmbedded.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackEmbedded-objects as value to a dart map
  static Map<String, List<FeedbackEmbedded>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackEmbedded>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackEmbedded[category=$category, markers=$markers, reporter=$reporter, stateTransitions=$stateTransitions, tracking=$tracking]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (category != null) r'category': category,
      if (markers != null) r'markers': markers,
      if (reporter != null) r'reporter': reporter,
      if (stateTransitions != null) r'stateTransitions': stateTransitions,
      if (tracking != null) r'tracking': tracking,
    };
  }
}
