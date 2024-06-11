//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FeedbackJsonhalReadEmbedded {
  /// Returns a new [FeedbackJsonhalReadEmbedded] instance.
  FeedbackJsonhalReadEmbedded({
    this.markers,
  });

  /// Returns a new [FeedbackJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackJsonhalReadEmbedded(
      markers: MarkerJsonhalRead.listFromJson(json[r'markers']),
    );
  }

  final List<MarkerJsonhalRead>? markers;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackJsonhalReadEmbedded &&
        DeepCollectionEquality.unordered().equals(markers, other.markers);
  }

  @override
  int get hashCode => (markers == null ? 0 : markers.hashCode);

  static List<FeedbackJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackJsonhalReadEmbedded>[];
    }

    return json.fold(<FeedbackJsonhalReadEmbedded>[],
        (List<FeedbackJsonhalReadEmbedded> previousValue, element) {
      final FeedbackJsonhalReadEmbedded? object =
          FeedbackJsonhalReadEmbedded.fromJson(element);
      if (object is FeedbackJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, FeedbackJsonhalReadEmbedded>{},
        (Map<String, FeedbackJsonhalReadEmbedded> previousValue, element) {
      final FeedbackJsonhalReadEmbedded? object =
          FeedbackJsonhalReadEmbedded.fromJson(element.value);
      if (object is FeedbackJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<FeedbackJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackJsonhalReadEmbedded>>(
          key, FeedbackJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackJsonhalReadEmbedded[markers=$markers]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'markers')) r'markers': markers,
    };
  }
}
