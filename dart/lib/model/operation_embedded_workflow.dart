//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationEmbeddedWorkflow {
  /// Returns a new [OperationEmbeddedWorkflow] instance.
  OperationEmbeddedWorkflow({
    this.metrics = const [],
    this.state,
    this.transitions = const [],
  });

  /// Returns a new [OperationEmbeddedWorkflow] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationEmbeddedWorkflow.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationEmbeddedWorkflow(
      metrics: Metric.listFromJson(json[r'metrics']),
      state: WorkflowState.fromJson(json[r'state']),
      transitions: WorkflowTransition.listFromJson(json[r'transitions']),
    );
  }

  List<Metric> metrics;

  WorkflowState state;

  List<WorkflowTransition> transitions;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbeddedWorkflow &&
        DeepCollectionEquality.unordered().equals(metrics, other.metrics) &&
        other.state == state &&
        DeepCollectionEquality.unordered()
            .equals(transitions, other.transitions);
  }

  @override
  int get hashCode =>
      (metrics == null ? 0 : metrics.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (transitions == null ? 0 : transitions.hashCode);

  static List<OperationEmbeddedWorkflow> listFromJson(List<dynamic> json) {
    return <OperationEmbeddedWorkflow>[
      if (json is List)
        for (dynamic value in json) OperationEmbeddedWorkflow.fromJson(value),
    ];
  }

  static Map<String, OperationEmbeddedWorkflow> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationEmbeddedWorkflow>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationEmbeddedWorkflow.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationEmbeddedWorkflow-objects as value to a dart map
  static Map<String, List<OperationEmbeddedWorkflow>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationEmbeddedWorkflow>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationEmbeddedWorkflow.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationEmbeddedWorkflow[metrics=$metrics, state=$state, transitions=$transitions]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (metrics != null) r'metrics': metrics,
      if (state != null) r'state': state,
      if (transitions != null) r'transitions': transitions,
    };
  }
}
