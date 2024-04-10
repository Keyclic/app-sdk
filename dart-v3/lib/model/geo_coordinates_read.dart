//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GeoCoordinatesRead {
  /// Returns a new [GeoCoordinatesRead] instance.
  GeoCoordinatesRead({
    this.elevation,
    this.point,
  });

  /// Returns a new [GeoCoordinatesRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GeoCoordinatesRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GeoCoordinatesRead(
      elevation:
          json[r'elevation'] == null ? null : json[r'elevation'].toDouble(),
      point: PointRead.fromJson(json[r'point']),
    );
  }

  /// The elevation of a location (WGS 84).
  // minimum: -10000
  // maximum: 8000
  num? elevation;

  PointRead? point;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GeoCoordinatesRead &&
        other.elevation == elevation &&
        other.point == point;
  }

  @override
  int get hashCode =>
      (elevation == null ? 0 : elevation.hashCode) +
      (point == null ? 0 : point.hashCode);

  static List<GeoCoordinatesRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GeoCoordinatesRead>[];
    }

    return json.fold(<GeoCoordinatesRead>[],
        (List<GeoCoordinatesRead> previousValue, element) {
      final GeoCoordinatesRead? object = GeoCoordinatesRead.fromJson(element);
      if (object is GeoCoordinatesRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GeoCoordinatesRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GeoCoordinatesRead>{};
    }

    return json.entries.fold(<String, GeoCoordinatesRead>{},
        (Map<String, GeoCoordinatesRead> previousValue, element) {
      final GeoCoordinatesRead? object =
          GeoCoordinatesRead.fromJson(element.value);
      if (object is GeoCoordinatesRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GeoCoordinatesRead-objects as value to a dart map
  static Map<String, List<GeoCoordinatesRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GeoCoordinatesRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GeoCoordinatesRead>>(
          key, GeoCoordinatesRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'GeoCoordinatesRead[elevation=$elevation, point=$point]';

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
