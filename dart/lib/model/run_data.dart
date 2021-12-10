part of keyclic_sdk_api.api;

class RunData {
  RunData({
    this.event,
    this.inputs,
    this.outputs,
    this.verbose,
  });

  factory RunData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RunData(
      event: json['event'] is Iterable
          ? List<Map<String, dynamic>>.from(json['event'])
          : [],
      inputs: json['inputs'] is Iterable
          ? List<Map<String, dynamic>>.from(json['inputs'])
          : [],
      outputs: json['outputs'] is Iterable
          ? List<Map<String, dynamic>>.from(json['outputs'])
          : [],
      verbose: json['verbose'],
    );
  }

  List<Map<String, dynamic>> event;

  List<Map<String, dynamic>> inputs;

  List<Map<String, dynamic>> outputs;

  bool verbose;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RunData &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(event, other.event) &&
        DeepCollectionEquality.unordered().equals(inputs, other.inputs) &&
        DeepCollectionEquality.unordered().equals(outputs, other.outputs) &&
        verbose == other.verbose;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (event is List && event.isNotEmpty) {
      hashCode ^= event
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (inputs is List && inputs.isNotEmpty) {
      hashCode ^= inputs
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (outputs is List && outputs.isNotEmpty) {
      hashCode ^= outputs
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= verbose?.hashCode ?? 0;

    return hashCode;
  }

  static List<RunData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => RunData.fromJson(value))?.toList() ??
        <RunData>[];
  }

  static Map<String, RunData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RunData>((String key, dynamic value) {
          return MapEntry(key, RunData.fromJson(value));
        }) ??
        <String, RunData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (event != null) 'event': event,
      if (inputs != null) 'inputs': inputs,
      if (outputs != null) 'outputs': outputs,
      if (verbose != null) 'verbose': verbose,
    };
  }

  @override
  String toString() {
    return 'RunData[event=$event, inputs=$inputs, outputs=$outputs, verbose=$verbose, ]';
  }
}
