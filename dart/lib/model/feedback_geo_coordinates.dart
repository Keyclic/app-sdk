//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackGeoCoordinates {
  /// Returns a new [FeedbackGeoCoordinates] instance.
  FeedbackGeoCoordinates({
    this.elevation,
    this.point,
  });

  /// Returns a new [FeedbackGeoCoordinates] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackGeoCoordinates.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackGeoCoordinates(
      elevation: json[r'elevation'],
      point: Point.fromJson(json[r'point']),
    );
  }

  // minimum: -1E+4
  // maximum: 8E+3
  double elevation;

  Point point;

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

  static List<FeedbackGeoCoordinates> listFromJson(List<dynamic> json) {
    return <FeedbackGeoCoordinates>[
      if (json is List)
        for (dynamic value in json) FeedbackGeoCoordinates.fromJson(value),
    ];
  }

  static Map<String, FeedbackGeoCoordinates> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackGeoCoordinates>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackGeoCoordinates.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackGeoCoordinates-objects as value to a dart map
  static Map<String, List<FeedbackGeoCoordinates>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackGeoCoordinates>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackGeoCoordinates.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackGeoCoordinates[elevation=$elevation, point=$point]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (elevation != null) r'elevation': elevation,
      if (point != null) r'point': point,
    };
  }
}
