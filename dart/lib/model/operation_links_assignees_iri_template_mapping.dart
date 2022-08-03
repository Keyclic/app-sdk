part of keyclic_sdk_api.api;

class OperationLinksAssigneesIriTemplateMapping {
  OperationLinksAssigneesIriTemplateMapping({
    this.organization,
    this.task,
  });

  factory OperationLinksAssigneesIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssigneesIriTemplateMapping(
      organization: json['organization'],
      task: json['task'],
    );
  }

  String organization;

  String task;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksAssigneesIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        organization == other.organization &&
        task == other.task;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= task?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksAssigneesIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksAssigneesIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <OperationLinksAssigneesIriTemplateMapping>[];
  }

  static Map<String, OperationLinksAssigneesIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksAssigneesIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksAssigneesIriTemplateMapping.fromJson(value));
        }) ??
        <String, OperationLinksAssigneesIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization,
      if (task != null) 'task': task,
    };
  }

  @override
  String toString() {
    return 'OperationLinksAssigneesIriTemplateMapping[organization=$organization, task=$task, ]';
  }
}
