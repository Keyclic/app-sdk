//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackDataGeoPoint {
  /// Returns a new [FeedbackDataGeoPoint] instance.
  FeedbackDataGeoPoint({
    this.latitude,
    this.longitude,
    this.srid,
  });

  /// Returns a new [FeedbackDataGeoPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackDataGeoPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackDataGeoPoint(
      latitude: json[r'latitude'] == null ? null : json[r'latitude'].toDouble(),
      longitude:
          json[r'longitude'] == null ? null : json[r'longitude'].toDouble(),
      srid: json[r'srid'] == null ? null : json[r'srid'].toDouble(),
    );
  }

  num latitude;

  num longitude;

  num srid;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackDataGeoPoint &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.srid == srid;
  }

  @override
  int get hashCode =>
      (latitude == null ? 0 : latitude.hashCode) +
      (longitude == null ? 0 : longitude.hashCode) +
      (srid == null ? 0 : srid.hashCode);

  static List<FeedbackDataGeoPoint> listFromJson(List<dynamic> json) {
    return <FeedbackDataGeoPoint>[
      if (json is List)
        for (dynamic value in json) FeedbackDataGeoPoint.fromJson(value),
    ];
  }

  static Map<String, FeedbackDataGeoPoint> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackDataGeoPoint>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackDataGeoPoint.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackDataGeoPoint-objects as value to a dart map
  static Map<String, List<FeedbackDataGeoPoint>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackDataGeoPoint>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackDataGeoPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackDataGeoPoint[latitude=$latitude, longitude=$longitude, srid=$srid]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (latitude != null) r'latitude': latitude,
      if (longitude != null) r'longitude': longitude,
      if (srid != null) r'srid': srid,
    };
  }
}
