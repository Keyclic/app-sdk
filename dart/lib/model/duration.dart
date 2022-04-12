//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Duration {
  /// Returns a new [Duration] instance.
  Duration({
    this.hours,
    this.minutes,
    this.seconds,
  });

  /// Returns a new [Duration] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Duration? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Duration(
      hours: json[r'hours']?.toDouble(),
      minutes: json[r'minutes']?.toDouble(),
      seconds: json[r'seconds'],
    );
  }

  double? hours;

  double? minutes;

  int? seconds;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Duration &&
        other.hours == hours &&
        other.minutes == minutes &&
        other.seconds == seconds;
  }

  @override
  int get hashCode =>
      (hours == null ? 0 : hours.hashCode) +
      (minutes == null ? 0 : minutes.hashCode) +
      (seconds == null ? 0 : seconds.hashCode);

  static List<Duration> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Duration>[];
    }
    return json
        .map((value) {
          return Duration.fromJson(value);
        })
        .whereType<Duration>()
        .toList();
  }

  static Map<String, Duration> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Duration>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Duration?>(key, Duration.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Duration>;
  }

  // maps a json object with a list of Duration-objects as value to a dart map
  static Map<String, List<Duration>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Duration>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Duration.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Duration[hours=$hours, minutes=$minutes, seconds=$seconds]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (hours != null) r'hours': hours,
      if (minutes != null) r'minutes': minutes,
      if (seconds != null) r'seconds': seconds,
    };
  }
}
