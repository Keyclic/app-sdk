part of keyclic_sdk_api.api;

class OperationLinksAssignmentsIriTemplateMapping {
  OperationLinksAssignmentsIriTemplateMapping({
    this.operation,
  });

  factory OperationLinksAssignmentsIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssignmentsIriTemplateMapping(
      operation: json['operation'],
    );
  }

  String operation;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksAssignmentsIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        operation == other.operation;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= operation?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksAssignmentsIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksAssignmentsIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <OperationLinksAssignmentsIriTemplateMapping>[];
  }

  static Map<String, OperationLinksAssignmentsIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksAssignmentsIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksAssignmentsIriTemplateMapping.fromJson(value));
        }) ??
        <String, OperationLinksAssignmentsIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (operation != null) 'operation': operation,
    };
  }

  @override
  String toString() {
    return 'OperationLinksAssignmentsIriTemplateMapping[operation=$operation, ]';
  }
}
