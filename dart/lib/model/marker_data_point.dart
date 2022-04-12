//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MarkerDataPoint {
  /// Returns a new [MarkerDataPoint] instance.
  MarkerDataPoint({
    this.x,
    this.y,
  });

  /// Returns a new [MarkerDataPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MarkerDataPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerDataPoint(
      x: json[r'x'] == null ? null : json[r'x'].toDouble(),
      y: json[r'y'] == null ? null : json[r'y'].toDouble(),
    );
  }

  num x;

  num y;

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

  static List<MarkerDataPoint> listFromJson(List<dynamic> json) {
    return <MarkerDataPoint>[
      if (json is List)
        for (dynamic value in json) MarkerDataPoint.fromJson(value),
    ];
  }

  static Map<String, MarkerDataPoint> mapFromJson(Map<String, dynamic> json) {
    return <String, MarkerDataPoint>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerDataPoint.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MarkerDataPoint-objects as value to a dart map
  static Map<String, List<MarkerDataPoint>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MarkerDataPoint>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerDataPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerDataPoint[x=$x, y=$y]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (x != null) r'x': x,
      if (y != null) r'y': y,
    };
  }
}
