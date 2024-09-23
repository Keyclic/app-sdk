//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GeoCoordinatesJsongeoRead {
  /// Returns a new [GeoCoordinatesJsongeoRead] instance.
  GeoCoordinatesJsongeoRead({
    this.elevation,
    this.point,
  });

  /// Returns a new [GeoCoordinatesJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GeoCoordinatesJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GeoCoordinatesJsongeoRead(
      elevation:
          json[r'elevation'] == null ? null : json[r'elevation'].toDouble(),
      point: PointJsongeoRead.fromJson(json[r'point']),
    );
  }

  /// The elevation of a location (WGS 84).
  // minimum: -10000
  // maximum: 8000
  num? elevation;

  PointJsongeoRead? point;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GeoCoordinatesJsongeoRead &&
        other.elevation == elevation &&
        other.point == point;
  }

  @override
  int get hashCode =>
      (elevation == null ? 0 : elevation.hashCode) +
      (point == null ? 0 : point.hashCode);

  static List<GeoCoordinatesJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <GeoCoordinatesJsongeoRead>[];
    }

    return json.fold(<GeoCoordinatesJsongeoRead>[],
        (List<GeoCoordinatesJsongeoRead> previousValue, element) {
      final GeoCoordinatesJsongeoRead? object =
          GeoCoordinatesJsongeoRead.fromJson(element);
      if (object is GeoCoordinatesJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GeoCoordinatesJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GeoCoordinatesJsongeoRead>{};
    }

    return json.entries.fold(<String, GeoCoordinatesJsongeoRead>{},
        (Map<String, GeoCoordinatesJsongeoRead> previousValue, element) {
      final GeoCoordinatesJsongeoRead? object =
          GeoCoordinatesJsongeoRead.fromJson(element.value);
      if (object is GeoCoordinatesJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GeoCoordinatesJsongeoRead-objects as value to a dart map
  static Map<String, List<GeoCoordinatesJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GeoCoordinatesJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GeoCoordinatesJsongeoRead>>(
          key, GeoCoordinatesJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GeoCoordinatesJsongeoRead[elevation=$elevation, point=$point]';

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
