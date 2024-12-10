//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class DurationJsonhalRead {
  /// Returns a new [DurationJsonhalRead] instance.
  DurationJsonhalRead({
    this.hours,
    this.minutes,
    this.seconds,
  });

  /// Returns a new [DurationJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DurationJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DurationJsonhalRead(
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

    return other is DurationJsonhalRead &&
        other.hours == hours &&
        other.minutes == minutes &&
        other.seconds == seconds;
  }

  @override
  int get hashCode =>
      (hours == null ? 0 : hours.hashCode) +
      (minutes == null ? 0 : minutes.hashCode) +
      (seconds == null ? 0 : seconds.hashCode);

  static List<DurationJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <DurationJsonhalRead>[];
    }

    return json.fold(<DurationJsonhalRead>[],
        (List<DurationJsonhalRead> previousValue, element) {
      final DurationJsonhalRead? object = DurationJsonhalRead.fromJson(element);
      if (object is DurationJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DurationJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DurationJsonhalRead>{};
    }

    return json.entries.fold(<String, DurationJsonhalRead>{},
        (Map<String, DurationJsonhalRead> previousValue, element) {
      final DurationJsonhalRead? object =
          DurationJsonhalRead.fromJson(element.value);
      if (object is DurationJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DurationJsonhalRead-objects as value to a dart map
  static Map<String, List<DurationJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DurationJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DurationJsonhalRead>>(
          key, DurationJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DurationJsonhalRead[hours=$hours, minutes=$minutes, seconds=$seconds]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'hours')) r'hours': hours,
      if (keys == null || keys.contains(r'minutes')) r'minutes': minutes,
      if (keys == null || keys.contains(r'seconds')) r'seconds': seconds,
    };
  }
}
