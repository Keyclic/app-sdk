//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MetricRead {
  /// Returns a new [MetricRead] instance.
  MetricRead({
    this.duration,
    required this.name,
  });

  /// Returns a new [MetricRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MetricRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MetricRead(
      duration: DurationRead.fromJson(json[r'duration']),
      name: json[r'name'],
    );
  }

  DurationRead? duration;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MetricRead &&
        other.duration == duration &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) + name.hashCode;

  static List<MetricRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <MetricRead>[];
    }

    return json.fold(<MetricRead>[], (List<MetricRead> previousValue, element) {
      final MetricRead? object = MetricRead.fromJson(element);
      if (object is MetricRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MetricRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MetricRead>{};
    }

    return json.entries.fold(<String, MetricRead>{},
        (Map<String, MetricRead> previousValue, element) {
      final MetricRead? object = MetricRead.fromJson(element.value);
      if (object is MetricRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MetricRead-objects as value to a dart map
  static Map<String, List<MetricRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MetricRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MetricRead>>(
          key, MetricRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'MetricRead[duration=$duration, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^duration\.').hasMatch(key)))
        r'duration': duration?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^duration\.'))) {
            previousValue.add(element.split(RegExp(r'^duration\.')).last);
          }

          return previousValue;
        })),
      r'name': name,
    };
  }
}
