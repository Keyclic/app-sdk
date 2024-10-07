//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PointJsongeoRead {
  /// Returns a new [PointJsongeoRead] instance.
  PointJsongeoRead({
    required this.srid,
    required this.latitude,
    required this.longitude,
  });

  /// Returns a new [PointJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PointJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PointJsongeoRead(
      srid: json[r'srid'],
      latitude: json[r'latitude'] == null ? null : json[r'latitude'].toDouble(),
      longitude:
          json[r'longitude'] == null ? null : json[r'longitude'].toDouble(),
    );
  }

  int srid;

  num latitude;

  num longitude;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PointJsongeoRead &&
        other.srid == srid &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode => srid.hashCode + latitude.hashCode + longitude.hashCode;

  static List<PointJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PointJsongeoRead>[];
    }

    return json.fold(<PointJsongeoRead>[],
        (List<PointJsongeoRead> previousValue, element) {
      final PointJsongeoRead? object = PointJsongeoRead.fromJson(element);
      if (object is PointJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PointJsongeoRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PointJsongeoRead>{};
    }

    return json.entries.fold(<String, PointJsongeoRead>{},
        (Map<String, PointJsongeoRead> previousValue, element) {
      final PointJsongeoRead? object = PointJsongeoRead.fromJson(element.value);
      if (object is PointJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PointJsongeoRead-objects as value to a dart map
  static Map<String, List<PointJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PointJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PointJsongeoRead>>(
          key, PointJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PointJsongeoRead[srid=$srid, latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'srid': srid,
      r'latitude': latitude,
      r'longitude': longitude,
    };
  }
}
