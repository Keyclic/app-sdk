//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Metric {
  /// Returns a new [Metric] instance.
  Metric({
    this.name,
    this.duration,
  });

  /// Returns a new [Metric] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Metric? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Metric(
      name: json[r'name'],
      duration: Duration.fromJson(json[r'duration']),
    );
  }

  String? name;

  Duration? duration;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Metric && other.name == name && other.duration == duration;
  }

  @override
  int get hashCode =>
      (name == null ? 0 : name.hashCode) +
      (duration == null ? 0 : duration.hashCode);

  static List<Metric> listFromJson(Iterable? json) {
    if (json == null) {
      return <Metric>[];
    }

    return json.fold(<Metric>[], (List<Metric> previousValue, element) {
      final Metric? object = Metric.fromJson(element);
      if (object is Metric) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Metric> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Metric>{};
    }

    return json.entries.fold(<String, Metric>{},
        (Map<String, Metric> previousValue, element) {
      final Metric? object = Metric.fromJson(element.value);
      if (object is Metric) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Metric-objects as value to a dart map
  static Map<String, List<Metric>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Metric>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Metric>>(key, Metric.listFromJson(value));
    });
  }

  @override
  String toString() => 'Metric[name=$name, duration=$duration]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null ||
          keys.any((key) => RegExp(r'^duration\.').hasMatch(key)))
        r'duration': duration?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^duration\.'))) {
            previousValue.add(element.split(RegExp(r'^duration\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
