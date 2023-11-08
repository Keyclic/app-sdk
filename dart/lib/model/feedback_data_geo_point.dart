//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static FeedbackDataGeoPoint? fromJson(Map<String, dynamic>? json) {
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

  num? latitude;

  num? longitude;

  num? srid;

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

  static List<FeedbackDataGeoPoint> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <FeedbackDataGeoPoint>[];
    }

    return json.fold(<FeedbackDataGeoPoint>[],
        (List<FeedbackDataGeoPoint> previousValue, element) {
      final FeedbackDataGeoPoint? object =
          FeedbackDataGeoPoint.fromJson(element);
      if (object is FeedbackDataGeoPoint) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackDataGeoPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackDataGeoPoint>{};
    }

    return json.entries.fold(<String, FeedbackDataGeoPoint>{},
        (Map<String, FeedbackDataGeoPoint> previousValue, element) {
      final FeedbackDataGeoPoint? object =
          FeedbackDataGeoPoint.fromJson(element.value);
      if (object is FeedbackDataGeoPoint) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackDataGeoPoint-objects as value to a dart map
  static Map<String, List<FeedbackDataGeoPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackDataGeoPoint>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackDataGeoPoint>>(
          key, FeedbackDataGeoPoint.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackDataGeoPoint[latitude=$latitude, longitude=$longitude, srid=$srid]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && latitude != null) ||
          (keys?.contains(r'latitude') ?? false))
        r'latitude': latitude,
      if ((keys == null && longitude != null) ||
          (keys?.contains(r'longitude') ?? false))
        r'longitude': longitude,
      if ((keys == null && srid != null) || (keys?.contains(r'srid') ?? false))
        r'srid': srid,
    };
  }
}
