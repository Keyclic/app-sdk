//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackDataGeo {
  /// Returns a new [FeedbackDataGeo] instance.
  FeedbackDataGeo({
    this.point,
    this.elevation,
  });

  /// Returns a new [FeedbackDataGeo] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackDataGeo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackDataGeo(
      point: FeedbackDataGeoPoint.fromJson(json[r'point']),
      elevation:
          json[r'elevation'] == null ? null : json[r'elevation'].toDouble(),
    );
  }

  FeedbackDataGeoPoint? point;

  num? elevation;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackDataGeo &&
        other.point == point &&
        other.elevation == elevation;
  }

  @override
  int get hashCode =>
      (point == null ? 0 : point.hashCode) +
      (elevation == null ? 0 : elevation.hashCode);

  static List<FeedbackDataGeo> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackDataGeo>[];
    }
    return json
        .map((value) {
          return FeedbackDataGeo.fromJson(value);
        })
        .whereType<FeedbackDataGeo>()
        .toList();
  }

  static Map<String, FeedbackDataGeo> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackDataGeo>{};
    }

    final map = json.map((key, value) => MapEntry<String, FeedbackDataGeo?>(
        key, FeedbackDataGeo.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackDataGeo>;
  }

  // maps a json object with a list of FeedbackDataGeo-objects as value to a dart map
  static Map<String, List<FeedbackDataGeo>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackDataGeo>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: FeedbackDataGeo.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackDataGeo[point=$point, elevation=$elevation]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (point != null) r'point': point,
      if (elevation != null) r'elevation': elevation,
    };
  }
}
