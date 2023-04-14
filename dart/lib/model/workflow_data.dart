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

    return json.fold(<WorkflowData>[],
        (List<WorkflowData> previousValue, element) {
      final WorkflowData? object = WorkflowData.fromJson(element);
      if (object is WorkflowData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowData>{};
    }

    return json.entries.fold(<String, WorkflowData>{},
        (Map<String, WorkflowData> previousValue, element) {
      final WorkflowData? object = WorkflowData.fromJson(element.value);
      if (object is WorkflowData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowData-objects as value to a dart map
  static Map<String, List<WorkflowData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowData>>(
          key, WorkflowData.listFromJson(value));
    });
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
