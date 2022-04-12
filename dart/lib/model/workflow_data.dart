//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class WorkflowData {
  /// Returns a new [WorkflowData] instance.
  WorkflowData({
    this.text,
    this.datetime,
    required this.transition,
  });

  /// Returns a new [WorkflowData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WorkflowData(
      text: json[r'text'],
      datetime: json[r'datetime'],
      transition: json[r'transition'],
    );
  }

  String? text;

  String? datetime;

  String transition;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowData &&
        other.text == text &&
        other.datetime == datetime &&
        other.transition == transition;
  }

  @override
  int get hashCode =>
      (text == null ? 0 : text.hashCode) +
      (datetime == null ? 0 : datetime.hashCode) +
      transition.hashCode;

  static List<WorkflowData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <WorkflowData>[];
    }
    return json
        .map((value) {
          return WorkflowData.fromJson(value);
        })
        .whereType<WorkflowData>()
        .toList();
  }

  static Map<String, WorkflowData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, WorkflowData?>(key, WorkflowData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, WorkflowData>;
  }

  // maps a json object with a list of WorkflowData-objects as value to a dart map
  static Map<String, List<WorkflowData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<WorkflowData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: WorkflowData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'WorkflowData[text=$text, datetime=$datetime, transition=$transition]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (text != null) r'text': text,
      if (datetime != null) r'datetime': datetime,
      r'transition': transition,
    };
  }
}
