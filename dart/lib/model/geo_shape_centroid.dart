//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class GeoShapeCentroid {
  /// Returns a new [GeoShapeCentroid] instance.
  GeoShapeCentroid({
    required this.latitude,
    required this.longitude,
  });

  /// Returns a new [GeoShapeCentroid] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GeoShapeCentroid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GeoShapeCentroid(
      latitude: json[r'latitude'].toDouble(),
      longitude: json[r'longitude'].toDouble(),
    );
  }

  double latitude;

  double longitude;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GeoShapeCentroid &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode + longitude.hashCode;

  static List<GeoShapeCentroid> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <GeoShapeCentroid>[];
    }

    return json.fold(<GeoShapeCentroid>[],
        (List<GeoShapeCentroid> previousValue, element) {
      final GeoShapeCentroid? object = GeoShapeCentroid.fromJson(element);
      if (object is GeoShapeCentroid) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GeoShapeCentroid> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GeoShapeCentroid>{};
    }

    return json.entries.fold(<String, GeoShapeCentroid>{},
        (Map<String, GeoShapeCentroid> previousValue, element) {
      final GeoShapeCentroid? object = GeoShapeCentroid.fromJson(element.value);
      if (object is GeoShapeCentroid) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GeoShapeCentroid-objects as value to a dart map
  static Map<String, List<GeoShapeCentroid>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GeoShapeCentroid>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GeoShapeCentroid>>(
          key, GeoShapeCentroid.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GeoShapeCentroid[latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'latitude': latitude,
      r'longitude': longitude,
    };
  }
}
