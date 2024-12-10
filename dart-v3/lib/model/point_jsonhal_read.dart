//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PointJsonhalRead {
  /// Returns a new [PointJsonhalRead] instance.
  PointJsonhalRead({
    this.srid,
    this.latitude,
    this.longitude,
  });

  /// Returns a new [PointJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PointJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PointJsonhalRead(
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

    return other is PointJsonhalRead &&
        other.srid == srid &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode =>
      (srid == null ? 0 : srid.hashCode) +
      (latitude == null ? 0 : latitude.hashCode) +
      (longitude == null ? 0 : longitude.hashCode);

  static List<PointJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PointJsonhalRead>[];
    }

    return json.fold(<PointJsonhalRead>[],
        (List<PointJsonhalRead> previousValue, element) {
      final PointJsonhalRead? object = PointJsonhalRead.fromJson(element);
      if (object is PointJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PointJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PointJsonhalRead>{};
    }

    return json.entries.fold(<String, PointJsonhalRead>{},
        (Map<String, PointJsonhalRead> previousValue, element) {
      final PointJsonhalRead? object = PointJsonhalRead.fromJson(element.value);
      if (object is PointJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PointJsonhalRead-objects as value to a dart map
  static Map<String, List<PointJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PointJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PointJsonhalRead>>(
          key, PointJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PointJsonhalRead[srid=$srid, latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'srid')) r'srid': srid,
      if (keys == null || keys.contains(r'latitude')) r'latitude': latitude,
      if (keys == null || keys.contains(r'longitude')) r'longitude': longitude,
    };
  }
}
