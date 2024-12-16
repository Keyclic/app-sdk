//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WorkflowTransitionJsonhalReadEmbedded {
  /// Returns a new [WorkflowTransitionJsonhalReadEmbedded] instance.
  WorkflowTransitionJsonhalReadEmbedded({
    required this.from,
    required this.to,
  });

  /// Returns a new [WorkflowTransitionJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowTransitionJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return WorkflowTransitionJsonhalReadEmbedded(
      from: WorkflowStateJsonhalRead.fromJson(json[r'from'])!,
      to: WorkflowStateJsonhalRead.fromJson(json[r'to'])!,
    );
  }

  WorkflowStateJsonhalRead from;

  WorkflowStateJsonhalRead to;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowTransitionJsonhalReadEmbedded &&
        other.from == from &&
        other.to == to;
  }

  @override
  int get hashCode => from.hashCode + to.hashCode;

  static List<WorkflowTransitionJsonhalReadEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <WorkflowTransitionJsonhalReadEmbedded>[];
    }

    return json.fold(<WorkflowTransitionJsonhalReadEmbedded>[],
        (List<WorkflowTransitionJsonhalReadEmbedded> previousValue, element) {
      final WorkflowTransitionJsonhalReadEmbedded? object =
          WorkflowTransitionJsonhalReadEmbedded.fromJson(element);
      if (object is WorkflowTransitionJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowTransitionJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowTransitionJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, WorkflowTransitionJsonhalReadEmbedded>{},
        (Map<String, WorkflowTransitionJsonhalReadEmbedded> previousValue,
            element) {
      final WorkflowTransitionJsonhalReadEmbedded? object =
          WorkflowTransitionJsonhalReadEmbedded.fromJson(element.value);
      if (object is WorkflowTransitionJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowTransitionJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<WorkflowTransitionJsonhalReadEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowTransitionJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowTransitionJsonhalReadEmbedded>>(
          key, WorkflowTransitionJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WorkflowTransitionJsonhalReadEmbedded[from=$from, to=$to]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'from': from.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^from\.'))) {
          previousValue.add(element.split(RegExp(r'^from\.')).last);
        }

        return previousValue;
      })),
      r'to': to.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^to\.'))) {
          previousValue.add(element.split(RegExp(r'^to\.')).last);
        }

        return previousValue;
      })),
    };
  }
}
