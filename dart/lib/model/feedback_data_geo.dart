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
      point: json[r'point'] is! Map
          ? null
          : FeedbackDataGeoPoint.fromJson(json[r'point']),
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

    return json.fold(<FeedbackDataGeo>[],
        (List<FeedbackDataGeo> previousValue, element) {
      final FeedbackDataGeo? object = FeedbackDataGeo.fromJson(element);
      if (object is FeedbackDataGeo) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackDataGeo> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackDataGeo>{};
    }

    return json.entries.fold(<String, FeedbackDataGeo>{},
        (Map<String, FeedbackDataGeo> previousValue, element) {
      final FeedbackDataGeo? object = FeedbackDataGeo.fromJson(element.value);
      if (object is FeedbackDataGeo) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackDataGeo-objects as value to a dart map
  static Map<String, List<FeedbackDataGeo>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackDataGeo>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackDataGeo>>(
          key, FeedbackDataGeo.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackDataGeo[point=$point, elevation=$elevation]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && point != null) ||
          (keys?.contains(r'point') ?? false))
        r'point': point?.toJson(),
      if ((keys == null && elevation != null) ||
          (keys?.contains(r'elevation') ?? false))
        r'elevation': elevation,
    };
  }
}
