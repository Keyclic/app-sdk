part of keyclic_sdk_api.api;

class OperationEmbeddedWorkflow {
  OperationEmbeddedWorkflow({
    this.metrics,
    this.state,
    this.transitions,
  });

  factory OperationEmbeddedWorkflow.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationEmbeddedWorkflow(
      metrics: Metric.listFromJson(json['metrics']),
      state: WorkflowState.fromJson(json['state']),
      transitions: WorkflowTransition.listFromJson(json['transitions']),
    );
  }

  List<Metric> metrics;

  WorkflowState state;

  List<WorkflowTransition> transitions;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbeddedWorkflow &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(metrics, other.metrics) &&
        state == other.state &&
        DeepCollectionEquality.unordered()
            .equals(transitions, other.transitions);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (metrics is List && metrics.isNotEmpty) {
      hashCode ^= metrics
          .map((Metric element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (transitions is List && transitions.isNotEmpty) {
      hashCode ^= transitions
          .map((WorkflowTransition element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= state?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationEmbeddedWorkflow> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationEmbeddedWorkflow.fromJson(value))
            ?.toList() ??
        <OperationEmbeddedWorkflow>[];
  }

  static Map<String, OperationEmbeddedWorkflow> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationEmbeddedWorkflow>(
            (String key, dynamic value) {
          return MapEntry(key, OperationEmbeddedWorkflow.fromJson(value));
        }) ??
        <String, OperationEmbeddedWorkflow>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (metrics != null) 'metrics': metrics,
      if (state != null) 'state': state.toJson(),
      if (transitions != null) 'transitions': transitions,
    };
  }

  @override
  String toString() {
    return 'OperationEmbeddedWorkflow[metrics=$metrics, state=$state, transitions=$transitions, ]';
  }
}
