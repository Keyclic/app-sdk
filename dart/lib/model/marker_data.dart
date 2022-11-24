//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MarkerData {
  /// Returns a new [MarkerData] instance.
  MarkerData({
    @required this.feedback,
    @required this.plan,
    @required this.point,
  });

  /// Returns a new [MarkerData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MarkerData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerData(
      feedback: json[r'feedback'],
      plan: json[r'plan'],
      point: MarkerDataPoint.fromJson(json[r'point']),
    );
  }

  String feedback;

  String plan;

  MarkerDataPoint point;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerData &&
        other.feedback == feedback &&
        other.plan == plan &&
        other.point == point;
  }

  @override
  int get hashCode =>
      (feedback == null ? 0 : feedback.hashCode) +
      (plan == null ? 0 : plan.hashCode) +
      (point == null ? 0 : point.hashCode);

  static List<MarkerData> listFromJson(List<dynamic> json) {
    return <MarkerData>[
      if (json is List)
        for (dynamic value in json) MarkerData.fromJson(value),
    ];
  }

  static Map<String, MarkerData> mapFromJson(Map<String, dynamic> json) {
    return <String, MarkerData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MarkerData-objects as value to a dart map
  static Map<String, List<MarkerData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MarkerData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'MarkerData[feedback=$feedback, plan=$plan, point=$point]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'feedback': feedback,
      r'plan': plan,
      r'point': point,
    };
  }
}
