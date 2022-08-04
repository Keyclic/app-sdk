part of keyclic_sdk_api.api;

class OperationLinksAssignmentsIriTemplate {
  OperationLinksAssignmentsIriTemplate({
    this.mapping,
  });

  factory OperationLinksAssignmentsIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssignmentsIriTemplate(
      mapping:
          OperationLinksAssignmentsIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  OperationLinksAssignmentsIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksAssignmentsIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksAssignmentsIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksAssignmentsIriTemplate.fromJson(value))
            ?.toList() ??
        <OperationLinksAssignmentsIriTemplate>[];
  }

  static Map<String, OperationLinksAssignmentsIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksAssignmentsIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksAssignmentsIriTemplate.fromJson(value));
        }) ??
        <String, OperationLinksAssignmentsIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksAssignmentsIriTemplate[mapping=$mapping, ]';
  }
}
