//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerData {
  /// Returns a new [MarkerData] instance.
  MarkerData({
    required this.feedback,
    required this.plan,
    required this.point,
  });

  /// Returns a new [MarkerData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerData(
      feedback: json[r'feedback'],
      plan: json[r'plan'],
      point: MarkerDataPoint.fromJson(json[r'point'])!,
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
  int get hashCode => feedback.hashCode + plan.hashCode + point.hashCode;

  static List<MarkerData> listFromJson(Iterable? json) {
    if (json == null) {
      return <MarkerData>[];
    }

    return json.fold(<MarkerData>[], (List<MarkerData> previousValue, element) {
      final MarkerData? object = MarkerData.fromJson(element);
      if (object is MarkerData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerData>{};
    }

    return json.entries.fold(<String, MarkerData>{},
        (Map<String, MarkerData> previousValue, element) {
      final MarkerData? object = MarkerData.fromJson(element.value);
      if (object is MarkerData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerData-objects as value to a dart map
  static Map<String, List<MarkerData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerData>>(
          key, MarkerData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MarkerData[feedback=$feedback, plan=$plan, point=$point]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'feedback': feedback,
      r'plan': plan,
      r'point': point.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^point\.'))) {
          previousValue.add(element.split(RegExp(r'^point\.')).last);
        }

        return previousValue;
      })),
    };
  }
}
