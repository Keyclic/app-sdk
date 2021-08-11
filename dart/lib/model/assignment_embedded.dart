part of keyclic_sdk_api.api;

class AssignmentEmbedded {
  AssignmentEmbedded({
    this.createdBy,
    this.service,
  });

  factory AssignmentEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentEmbedded(
      createdBy: Person.fromJson(json['createdBy']),
      service: InternalService.fromJson(json['service']),
    );
  }

  Person createdBy;

  InternalService service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentEmbedded &&
        runtimeType == other.runtimeType &&
        createdBy == other.createdBy &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= createdBy?.hashCode ?? 0;
    hashCode ^= service?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentEmbedded.fromJson(value))
            ?.toList() ??
        <AssignmentEmbedded>[];
  }

  static Map<String, AssignmentEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentEmbedded>((String key, dynamic value) {
          return MapEntry(key, AssignmentEmbedded.fromJson(value));
        }) ??
        <String, AssignmentEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdBy != null) 'createdBy': createdBy.toJson(),
      if (service != null) 'service': service.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentEmbedded[createdBy=$createdBy, service=$service, ]';
  }
}
