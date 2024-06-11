//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PointRead {
  /// Returns a new [PointRead] instance.
  PointRead({
    this.srid,
    this.latitude,
    this.longitude,
  });

  /// Returns a new [PointRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PointRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PointRead(
      srid: json[r'srid'],
      latitude: json[r'latitude'] == null ? null : json[r'latitude'].toDouble(),
      longitude:
          json[r'longitude'] == null ? null : json[r'longitude'].toDouble(),
    );
  }

  int? srid;

  num? latitude;

  num? longitude;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PointRead &&
        other.srid == srid &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode =>
      (srid == null ? 0 : srid.hashCode) +
      (latitude == null ? 0 : latitude.hashCode) +
      (longitude == null ? 0 : longitude.hashCode);

  static List<PointRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PointRead>[];
    }

    return json.fold(<PointRead>[], (List<PointRead> previousValue, element) {
      final PointRead? object = PointRead.fromJson(element);
      if (object is PointRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PointRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PointRead>{};
    }

    return json.entries.fold(<String, PointRead>{},
        (Map<String, PointRead> previousValue, element) {
      final PointRead? object = PointRead.fromJson(element.value);
      if (object is PointRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PointRead-objects as value to a dart map
  static Map<String, List<PointRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PointRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PointRead>>(
          key, PointRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PointRead[srid=$srid, latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'srid')) r'srid': srid,
      if (keys == null || keys.contains(r'latitude')) r'latitude': latitude,
      if (keys == null || keys.contains(r'longitude')) r'longitude': longitude,
    };
  }
}
