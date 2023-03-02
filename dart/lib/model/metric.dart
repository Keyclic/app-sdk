//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Metric {
  /// Returns a new [Metric] instance.
  Metric({
    this.name,
    this.duration,
  });

  /// Returns a new [Metric] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Metric.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Metric(
      name: json[r'name'],
      duration: Duration.fromJson(json[r'duration']),
    );
  }

  String name;

  Duration duration;

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

  static List<Metric> listFromJson(List<dynamic> json) {
    return <Metric>[
      if (json is List)
        for (dynamic value in json) Metric.fromJson(value),
    ];
  }

  static Map<String, Metric> mapFromJson(Map<String, dynamic> json) {
    return <String, Metric>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Metric.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Metric-objects as value to a dart map
  static Map<String, List<Metric>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Metric>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Metric.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'Metric[name=$name, duration=$duration]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (name != null) r'name': name,
      if (duration != null) r'duration': duration,
    };
  }
}
