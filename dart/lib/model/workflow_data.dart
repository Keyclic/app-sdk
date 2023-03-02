//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class WorkflowData {
  /// Returns a new [WorkflowData] instance.
  WorkflowData({
    this.text,
    this.datetime,
    @required this.transition,
  });

  /// Returns a new [WorkflowData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory WorkflowData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowData(
      text: json[r'text'],
      datetime: json[r'datetime'],
      transition: json[r'transition'],
    );
  }

  String text;

  String datetime;

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
      (transition == null ? 0 : transition.hashCode);

  static List<WorkflowData> listFromJson(List<dynamic> json) {
    return <WorkflowData>[
      if (json is List)
        for (dynamic value in json) WorkflowData.fromJson(value),
    ];
  }

  static Map<String, WorkflowData> mapFromJson(Map<String, dynamic> json) {
    return <String, WorkflowData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: WorkflowData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of WorkflowData-objects as value to a dart map
  static Map<String, List<WorkflowData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<WorkflowData>>{
      if (json is Map)
        for (final entry in json.entries)
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
