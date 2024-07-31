//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class DurationRead {
  /// Returns a new [DurationRead] instance.
  DurationRead({
    this.hours,
    this.minutes,
    this.seconds,
  });

  /// Returns a new [DurationRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DurationRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DurationRead(
      hours: json[r'hours'] == null ? null : json[r'hours'].toDouble(),
      minutes: json[r'minutes'],
      seconds: json[r'seconds'],
    );
  }

  final num? hours;

  final int? minutes;

  final int? seconds;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DurationRead &&
        other.hours == hours &&
        other.minutes == minutes &&
        other.seconds == seconds;
  }

  @override
  int get hashCode =>
      (hours == null ? 0 : hours.hashCode) +
      (minutes == null ? 0 : minutes.hashCode) +
      (seconds == null ? 0 : seconds.hashCode);

  static List<DurationRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <DurationRead>[];
    }

    return json.fold(<DurationRead>[],
        (List<DurationRead> previousValue, element) {
      final DurationRead? object = DurationRead.fromJson(element);
      if (object is DurationRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DurationRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DurationRead>{};
    }

    return json.entries.fold(<String, DurationRead>{},
        (Map<String, DurationRead> previousValue, element) {
      final DurationRead? object = DurationRead.fromJson(element.value);
      if (object is DurationRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DurationRead-objects as value to a dart map
  static Map<String, List<DurationRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DurationRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DurationRead>>(
          key, DurationRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DurationRead[hours=$hours, minutes=$minutes, seconds=$seconds]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'hours')) r'hours': hours,
      if (keys == null || keys.contains(r'minutes')) r'minutes': minutes,
      if (keys == null || keys.contains(r'seconds')) r'seconds': seconds,
    };
  }
}
