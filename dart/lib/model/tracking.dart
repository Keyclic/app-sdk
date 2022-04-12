//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Tracking {
  /// Returns a new [Tracking] instance.
  Tracking({
    this.checkpoints = const [],
    this.progression,
    this.state,
    this.time,
  });

  /// Returns a new [Tracking] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Tracking? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Tracking(
      checkpoints: Checkpoint.listFromJson(json[r'checkpoints']),
      progression: TrackingProgression.fromJson(json[r'progression']),
      state: json[r'state'],
      time: json[r'time'],
    );
  }

  List<Checkpoint>? checkpoints;

  TrackingProgression? progression;

  String? state;

  int? time;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Tracking &&
        DeepCollectionEquality.unordered()
            .equals(checkpoints, other.checkpoints) &&
        other.progression == progression &&
        other.state == state &&
        other.time == time;
  }

  @override
  int get hashCode =>
      (checkpoints == null ? 0 : checkpoints.hashCode) +
      (progression == null ? 0 : progression.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (time == null ? 0 : time.hashCode);

  static List<Tracking> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Tracking>[];
    }
    return json
        .map((value) {
          return Tracking.fromJson(value);
        })
        .whereType<Tracking>()
        .toList();
  }

  static Map<String, Tracking> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Tracking>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Tracking?>(key, Tracking.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Tracking>;
  }

  // maps a json object with a list of Tracking-objects as value to a dart map
  static Map<String, List<Tracking>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Tracking>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Tracking.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Tracking[checkpoints=$checkpoints, progression=$progression, state=$state, time=$time]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (checkpoints != null) r'checkpoints': checkpoints,
      if (progression != null) r'progression': progression,
      if (state != null) r'state': state,
      if (time != null) r'time': time,
    };
  }
}
