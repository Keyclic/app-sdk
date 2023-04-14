//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Chart {
  /// Returns a new [Chart] instance.
  Chart({
    this.data = const [],
    this.labels = const [],
  });

  /// Returns a new [Chart] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Chart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chart(
      data: List<int>.from(json[r'data'] ?? []),
      labels: List<String>.from(json[r'labels'] ?? []),
    );
  }

  List<int>? data;

  List<String>? labels;

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

  static List<Chart> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Chart>[];
    }

    return json.fold(<Chart>[], (List<Chart> previousValue, element) {
      final Chart? object = Chart.fromJson(element);
      if (object is Chart) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Chart> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Chart>{};
    }

    return json.entries.fold(<String, Chart>{},
        (Map<String, Chart> previousValue, element) {
      final Chart? object = Chart.fromJson(element.value);
      if (object is Chart) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Chart-objects as value to a dart map
  static Map<String, List<Chart>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Chart>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Chart>>(key, Chart.listFromJson(value));
    });
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
