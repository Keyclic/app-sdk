//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TrackingProgression {
  /// Returns a new [TrackingProgression] instance.
  TrackingProgression({
    this.resolved,
    this.total,
  });

  /// Returns a new [TrackingProgression] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TrackingProgression? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TrackingProgression(
      resolved: json[r'resolved']?.toDouble(),
      total: json[r'total'],
    );
  }

  double? resolved;

  int? total;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TrackingProgression &&
        other.resolved == resolved &&
        other.total == total;
  }

  @override
  int get hashCode =>
      (resolved == null ? 0 : resolved.hashCode) +
      (total == null ? 0 : total.hashCode);

  static List<TrackingProgression> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TrackingProgression>[];
    }

    return json.fold(<TrackingProgression>[],
        (List<TrackingProgression> previousValue, element) {
      final TrackingProgression? object = TrackingProgression.fromJson(element);
      if (object is TrackingProgression) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TrackingProgression> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TrackingProgression>{};
    }

    return json.entries.fold(<String, TrackingProgression>{},
        (Map<String, TrackingProgression> previousValue, element) {
      final TrackingProgression? object =
          TrackingProgression.fromJson(element.value);
      if (object is TrackingProgression) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TrackingProgression-objects as value to a dart map
  static Map<String, List<TrackingProgression>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TrackingProgression>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TrackingProgression>>(
          key, TrackingProgression.listFromJson(value));
    });
  }

  @override
  String toString() => 'TrackingProgression[resolved=$resolved, total=$total]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'resolved')) r'resolved': resolved,
      if (keys == null || keys.contains(r'total')) r'total': total,
    };
  }
}
