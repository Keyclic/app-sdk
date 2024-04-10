//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GeoCoordinatesJsonhalRead {
  /// Returns a new [GeoCoordinatesJsonhalRead] instance.
  GeoCoordinatesJsonhalRead({
    this.links,
    this.elevation,
    this.point,
  });

  /// Returns a new [GeoCoordinatesJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GeoCoordinatesJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GeoCoordinatesJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      elevation:
          json[r'elevation'] == null ? null : json[r'elevation'].toDouble(),
      point: PointJsonhalRead.fromJson(json[r'point']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// The elevation of a location (WGS 84).
  // minimum: -10000
  // maximum: 8000
  num? elevation;

  PointJsonhalRead? point;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GeoCoordinatesJsonhalRead &&
        other.links == links &&
        other.elevation == elevation &&
        other.point == point;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (elevation == null ? 0 : elevation.hashCode) +
      (point == null ? 0 : point.hashCode);

  static List<GeoCoordinatesJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GeoCoordinatesJsonhalRead>[];
    }

    return json.fold(<GeoCoordinatesJsonhalRead>[],
        (List<GeoCoordinatesJsonhalRead> previousValue, element) {
      final GeoCoordinatesJsonhalRead? object =
          GeoCoordinatesJsonhalRead.fromJson(element);
      if (object is GeoCoordinatesJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GeoCoordinatesJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GeoCoordinatesJsonhalRead>{};
    }

    return json.entries.fold(<String, GeoCoordinatesJsonhalRead>{},
        (Map<String, GeoCoordinatesJsonhalRead> previousValue, element) {
      final GeoCoordinatesJsonhalRead? object =
          GeoCoordinatesJsonhalRead.fromJson(element.value);
      if (object is GeoCoordinatesJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GeoCoordinatesJsonhalRead-objects as value to a dart map
  static Map<String, List<GeoCoordinatesJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GeoCoordinatesJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GeoCoordinatesJsonhalRead>>(
          key, GeoCoordinatesJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GeoCoordinatesJsonhalRead[links=$links, elevation=$elevation, point=$point]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
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
