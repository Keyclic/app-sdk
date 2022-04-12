//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Chart {
  /// Returns a new [Chart] instance.
  Chart({
    this.data = const [],
    this.labels = const [],
  });

  /// Returns a new [Chart] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Chart.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Chart(
      data: List<int>.from(json[r'data'] ?? []),
      labels: List<String>.from(json[r'labels'] ?? []),
    );
  }

  List<int> data;

  List<String> labels;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Chart &&
        DeepCollectionEquality.unordered().equals(data, other.data) &&
        DeepCollectionEquality.unordered().equals(labels, other.labels);
  }

  @override
  int get hashCode =>
      (data == null ? 0 : data.hashCode) +
      (labels == null ? 0 : labels.hashCode);

  static List<Chart> listFromJson(List<dynamic> json) {
    return <Chart>[
      if (json is List)
        for (dynamic value in json) Chart.fromJson(value),
    ];
  }

  static Map<String, Chart> mapFromJson(Map<String, dynamic> json) {
    return <String, Chart>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Chart.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Chart-objects as value to a dart map
  static Map<String, List<Chart>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Chart>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Chart.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'Chart[data=$data, labels=$labels]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (data != null) r'data': data,
      if (labels != null) r'labels': labels,
    };
  }
}
