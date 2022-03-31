part of keyclic_sdk_api.api;

class ProcedureWorkflowDataTransitionEnum {
  static const String activate_ = "activate";
}

class ProcedureWorkflowData {
  ProcedureWorkflowData({
    this.transition,
  });

  factory ProcedureWorkflowData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureWorkflowData(
      transition: json['transition'],
    );
  }

  /// use ProcedureWorkflowDataTransitionEnum
  String transition;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureWorkflowData &&
        runtimeType == other.runtimeType &&
        transition == other.transition;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= transition?.hashCode ?? 0;

    return hashCode;
  }

  static List<ProcedureWorkflowData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ProcedureWorkflowData.fromJson(value))
            ?.toList() ??
        <ProcedureWorkflowData>[];
  }

  static Map<String, ProcedureWorkflowData> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ProcedureWorkflowData>((String key, dynamic value) {
          return MapEntry(key, ProcedureWorkflowData.fromJson(value));
        }) ??
        <String, ProcedureWorkflowData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (transition != null) 'transition': transition,
    };
  }

  @override
  String toString() {
    return 'ProcedureWorkflowData[transition=$transition, ]';
  }
}
