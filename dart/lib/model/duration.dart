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
  static Duration? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<Duration>[], (List<Duration> previousValue, element) {
      final Duration? object = Duration.fromJson(element);
      if (object is Duration) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Duration> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Duration>{};
    }

    return json.entries.fold(<String, Duration>{},
        (Map<String, Duration> previousValue, element) {
      final Duration? object = Duration.fromJson(element.value);
      if (object is Duration) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Duration-objects as value to a dart map
  static Map<String, List<Duration>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Duration>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Duration>>(
          key, Duration.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Duration[hours=$hours, minutes=$minutes, seconds=$seconds]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'hours')) r'hours': hours,
      if (keys == null || keys.contains(r'minutes')) r'minutes': minutes,
      if (keys == null || keys.contains(r'seconds')) r'seconds': seconds,
    };
  }
}
