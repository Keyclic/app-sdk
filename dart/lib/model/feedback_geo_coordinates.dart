//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackGeoCoordinates {
  /// Returns a new [FeedbackGeoCoordinates] instance.
  FeedbackGeoCoordinates({
    this.elevation,
    this.point,
  });

  /// Returns a new [FeedbackGeoCoordinates] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackGeoCoordinates? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackGeoCoordinates(
      elevation: json[r'elevation']?.toDouble(),
      point: Point.fromJson(json[r'point']),
    );
  }

  // minimum: -1E+4
  // maximum: 8E+3
  double? elevation;

  Point? point;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackGeoCoordinates &&
        other.elevation == elevation &&
        other.point == point;
  }

  @override
  int get hashCode =>
      (elevation == null ? 0 : elevation.hashCode) +
      (point == null ? 0 : point.hashCode);

  static List<FeedbackGeoCoordinates> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackGeoCoordinates>[];
    }

    return json.fold(<FeedbackGeoCoordinates>[],
        (List<FeedbackGeoCoordinates> previousValue, element) {
      final FeedbackGeoCoordinates? object =
          FeedbackGeoCoordinates.fromJson(element);
      if (object is FeedbackGeoCoordinates) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackGeoCoordinates> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackGeoCoordinates>{};
    }

    return json.entries.fold(<String, FeedbackGeoCoordinates>{},
        (Map<String, FeedbackGeoCoordinates> previousValue, element) {
      final FeedbackGeoCoordinates? object =
          FeedbackGeoCoordinates.fromJson(element.value);
      if (object is FeedbackGeoCoordinates) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackGeoCoordinates-objects as value to a dart map
  static Map<String, List<FeedbackGeoCoordinates>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackGeoCoordinates>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackGeoCoordinates>>(
          key, FeedbackGeoCoordinates.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackGeoCoordinates[elevation=$elevation, point=$point]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'elevation')) r'elevation': elevation,
      if (keys == null || keys.any((key) => RegExp(r'^point\.').hasMatch(key)))
        r'point': point?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^point\.'))) {
            previousValue.add(element.split(RegExp(r'^point\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
