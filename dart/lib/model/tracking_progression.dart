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
    return json
        .map((value) {
          return TrackingProgression.fromJson(value);
        })
        .whereType<TrackingProgression>()
        .toList();
  }

  static Map<String, TrackingProgression> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TrackingProgression>{};
    }

    final map = json.map((key, value) => MapEntry<String, TrackingProgression?>(
        key, TrackingProgression.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, TrackingProgression>;
  }

  // maps a json object with a list of TrackingProgression-objects as value to a dart map
  static Map<String, List<TrackingProgression>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<TrackingProgression>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: TrackingProgression.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'TrackingProgression[resolved=$resolved, total=$total]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (resolved != null) r'resolved': resolved,
      if (total != null) r'total': total,
    };
  }
}
