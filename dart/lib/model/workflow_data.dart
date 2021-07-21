part of keyclic_sdk_api.api;

class WorkflowData {
  WorkflowData({
    this.text,
    this.datetime,
    this.transition,
  });

  factory WorkflowData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowData(
      text: json['text'],
      datetime: json['datetime'],
      transition: json['transition'],
    );
  }

  String text;

  String datetime;

  String transition;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowData &&
        runtimeType == other.runtimeType &&
        text == other.text &&
        datetime == other.datetime &&
        transition == other.transition;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= text?.hashCode ?? 0;
    hashCode ^= datetime?.hashCode ?? 0;
    hashCode ^= transition?.hashCode ?? 0;

    return hashCode;
  }

  static List<WorkflowData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WorkflowData.fromJson(value))
            ?.toList() ??
        <WorkflowData>[];
  }

  static Map<String, WorkflowData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, WorkflowData>((String key, dynamic value) {
          return MapEntry(key, WorkflowData.fromJson(value));
        }) ??
        <String, WorkflowData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (text != null) 'text': text,
      if (datetime != null) 'datetime': datetime,
      if (transition != null) 'transition': transition,
    };
  }

  @override
  String toString() {
    return 'WorkflowData[text=$text, datetime=$datetime, transition=$transition, ]';
  }
}
