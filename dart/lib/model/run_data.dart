//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RunData {
  /// Returns a new [RunData] instance.
  RunData({
    this.event,
    this.inputs,
    this.outputs,
    this.verbose,
  });

  /// Returns a new [RunData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RunData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RunData(
      event: json[r'event'] is! Iterable
          ? null
          : List<Map<String, Object>>.from(json[r'event']),
      inputs: json[r'inputs'] is! Iterable
          ? null
          : List<Map<String, Object>>.from(json[r'inputs']),
      outputs: json[r'outputs'] is! Iterable
          ? null
          : List<Map<String, Object>>.from(json[r'outputs']),
      verbose: json[r'verbose'],
    );
  }

  List<Map<String, Object>>? event;

  List<Map<String, Object>>? inputs;

  List<Map<String, Object>>? outputs;

  bool? verbose;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RunData &&
        DeepCollectionEquality.unordered().equals(event, other.event) &&
        DeepCollectionEquality.unordered().equals(inputs, other.inputs) &&
        DeepCollectionEquality.unordered().equals(outputs, other.outputs) &&
        other.verbose == verbose;
  }

  @override
  int get hashCode =>
      (event == null ? 0 : event.hashCode) +
      (inputs == null ? 0 : inputs.hashCode) +
      (outputs == null ? 0 : outputs.hashCode) +
      (verbose == null ? 0 : verbose.hashCode);

  static List<RunData> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <RunData>[];
    }

    return json.fold(<RunData>[], (List<RunData> previousValue, element) {
      final RunData? object = RunData.fromJson(element);
      if (object is RunData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RunData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RunData>{};
    }

    return json.entries.fold(<String, RunData>{},
        (Map<String, RunData> previousValue, element) {
      final RunData? object = RunData.fromJson(element.value);
      if (object is RunData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RunData-objects as value to a dart map
  static Map<String, List<RunData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RunData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RunData>>(key, RunData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RunData[event=$event, inputs=$inputs, outputs=$outputs, verbose=$verbose]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && event != null) ||
          (keys?.contains(r'event') ?? false))
        r'event': event,
      if ((keys == null && inputs != null) ||
          (keys?.contains(r'inputs') ?? false))
        r'inputs': inputs,
      if ((keys == null && outputs != null) ||
          (keys?.contains(r'outputs') ?? false))
        r'outputs': outputs,
      if ((keys == null && verbose != null) ||
          (keys?.contains(r'verbose') ?? false))
        r'verbose': verbose,
    };
  }
}
