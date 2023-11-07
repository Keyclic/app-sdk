//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static OperationEmbeddedWorkflow? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationEmbeddedWorkflow(
      metrics: Metric.listFromJson(json[r'metrics']),
      state: json[r'state'] is! Map
          ? null
          : WorkflowState.fromJson(json[r'state']),
      transitions: WorkflowTransition.listFromJson(json[r'transitions']),
    );
  }

  List<Metric>? metrics;

  WorkflowState? state;

  List<WorkflowTransition>? transitions;

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

  static List<OperationEmbeddedWorkflow> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationEmbeddedWorkflow>[];
    }

    return json.fold(<OperationEmbeddedWorkflow>[],
        (List<OperationEmbeddedWorkflow> previousValue, element) {
      final OperationEmbeddedWorkflow? object =
          OperationEmbeddedWorkflow.fromJson(element);
      if (object is OperationEmbeddedWorkflow) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationEmbeddedWorkflow> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationEmbeddedWorkflow>{};
    }

    return json.entries.fold(<String, OperationEmbeddedWorkflow>{},
        (Map<String, OperationEmbeddedWorkflow> previousValue, element) {
      final OperationEmbeddedWorkflow? object =
          OperationEmbeddedWorkflow.fromJson(element.value);
      if (object is OperationEmbeddedWorkflow) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationEmbeddedWorkflow-objects as value to a dart map
  static Map<String, List<OperationEmbeddedWorkflow>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationEmbeddedWorkflow>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationEmbeddedWorkflow>>(
          key, OperationEmbeddedWorkflow.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationEmbeddedWorkflow[metrics=$metrics, state=$state, transitions=$transitions]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && metrics != null) ||
          (keys?.contains(r'metrics') ?? false))
        r'metrics': metrics,
      if ((keys == null && state != null) ||
          (keys?.contains(r'state') ?? false))
        r'state': state?.toJson(),
      if ((keys == null && transitions != null) ||
          (keys?.contains(r'transitions') ?? false))
        r'transitions': transitions,
    };
  }
}
