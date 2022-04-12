//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RunData {
  /// Returns a new [RunData] instance.
  RunData({
    this.event = const [],
    this.inputs = const [],
    this.outputs = const [],
    this.verbose,
  });

  /// Returns a new [RunData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RunData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RunData(
      event: json[r'event'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'event'])
          : [],
      inputs: json[r'inputs'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'inputs'])
          : [],
      outputs: json[r'outputs'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'outputs'])
          : [],
      verbose: json[r'verbose'],
    );
  }

  List<Map<String, dynamic>>? event;

  List<Map<String, dynamic>>? inputs;

  List<Map<String, dynamic>>? outputs;

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

  static List<RunData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RunData>[];
    }
    return json
        .map((value) {
          return RunData.fromJson(value);
        })
        .whereType<RunData>()
        .toList();
  }

  static Map<String, RunData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RunData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, RunData?>(key, RunData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, RunData>;
  }

  // maps a json object with a list of RunData-objects as value to a dart map
  static Map<String, List<RunData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<RunData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: RunData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'RunData[event=$event, inputs=$inputs, outputs=$outputs, verbose=$verbose]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (event != null) r'event': event,
      if (inputs != null) r'inputs': inputs,
      if (outputs != null) r'outputs': outputs,
      if (verbose != null) r'verbose': verbose,
    };
  }
}
