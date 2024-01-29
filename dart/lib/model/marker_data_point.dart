//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerDataPoint {
  /// Returns a new [MarkerDataPoint] instance.
  MarkerDataPoint({
    this.x,
    this.y,
  });

  /// Returns a new [MarkerDataPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerDataPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MarkerDataPoint(
      x: json[r'x'] == null ? null : json[r'x'].toDouble(),
      y: json[r'y'] == null ? null : json[r'y'].toDouble(),
    );
  }

  num? x;

  num? y;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerDataPoint && other.x == x && other.y == y;
  }

  @override
  int get hashCode =>
      (x == null ? 0 : x.hashCode) + (y == null ? 0 : y.hashCode);

  static List<MarkerDataPoint> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerDataPoint>[];
    }

    return json.fold(<MarkerDataPoint>[],
        (List<MarkerDataPoint> previousValue, element) {
      final MarkerDataPoint? object = MarkerDataPoint.fromJson(element);
      if (object is MarkerDataPoint) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerDataPoint> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerDataPoint>{};
    }

    return json.entries.fold(<String, MarkerDataPoint>{},
        (Map<String, MarkerDataPoint> previousValue, element) {
      final MarkerDataPoint? object = MarkerDataPoint.fromJson(element.value);
      if (object is MarkerDataPoint) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerDataPoint-objects as value to a dart map
  static Map<String, List<MarkerDataPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerDataPoint>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerDataPoint>>(
          key, MarkerDataPoint.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerDataPoint[x=$x, y=$y]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'x')) r'x': x,
      if (keys == null || keys.contains(r'y')) r'y': y,
    };
  }
}
