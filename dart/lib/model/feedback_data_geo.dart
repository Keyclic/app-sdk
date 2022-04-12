//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackDataGeo {
  /// Returns a new [FeedbackDataGeo] instance.
  FeedbackDataGeo({
    this.point,
    this.elevation,
  });

  /// Returns a new [FeedbackDataGeo] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackDataGeo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackDataGeo(
      point: FeedbackDataGeoPoint.fromJson(json[r'point']),
      elevation:
          json[r'elevation'] == null ? null : json[r'elevation'].toDouble(),
    );
  }

  FeedbackDataGeoPoint point;

  num elevation;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackDataGeo &&
        other.point == point &&
        other.elevation == elevation;
  }

  @override
  int get hashCode =>
      (point == null ? 0 : point.hashCode) +
      (elevation == null ? 0 : elevation.hashCode);

  static List<FeedbackDataGeo> listFromJson(List<dynamic> json) {
    return <FeedbackDataGeo>[
      if (json is List)
        for (dynamic value in json) FeedbackDataGeo.fromJson(value),
    ];
  }

  static Map<String, FeedbackDataGeo> mapFromJson(Map<String, dynamic> json) {
    return <String, FeedbackDataGeo>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackDataGeo.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackDataGeo-objects as value to a dart map
  static Map<String, List<FeedbackDataGeo>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackDataGeo>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackDataGeo.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackDataGeo[point=$point, elevation=$elevation]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (point != null) r'point': point,
      if (elevation != null) r'elevation': elevation,
    };
  }
}
