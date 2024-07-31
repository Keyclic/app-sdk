//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MetricJsonhalRead {
  /// Returns a new [MetricJsonhalRead] instance.
  MetricJsonhalRead({
    this.links,
    this.duration,
    required this.name,
  });

  /// Returns a new [MetricJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MetricJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MetricJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      duration: DurationJsonhalRead.fromJson(json[r'duration']),
      name: json[r'name'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  DurationJsonhalRead? duration;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MetricJsonhalRead &&
        other.links == links &&
        other.duration == duration &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (duration == null ? 0 : duration.hashCode) +
      name.hashCode;

  static List<MetricJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <MetricJsonhalRead>[];
    }

    return json.fold(<MetricJsonhalRead>[],
        (List<MetricJsonhalRead> previousValue, element) {
      final MetricJsonhalRead? object = MetricJsonhalRead.fromJson(element);
      if (object is MetricJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MetricJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MetricJsonhalRead>{};
    }

    return json.entries.fold(<String, MetricJsonhalRead>{},
        (Map<String, MetricJsonhalRead> previousValue, element) {
      final MetricJsonhalRead? object =
          MetricJsonhalRead.fromJson(element.value);
      if (object is MetricJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MetricJsonhalRead-objects as value to a dart map
  static Map<String, List<MetricJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MetricJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MetricJsonhalRead>>(
          key, MetricJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MetricJsonhalRead[links=$links, duration=$duration, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
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
