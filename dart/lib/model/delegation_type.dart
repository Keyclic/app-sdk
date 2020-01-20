part of keyclic_sdk_api.api;

class DelegationType {
  DelegationType({
    this.id,
    this.type,
    this.workflow,
  });

  factory DelegationType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationType(
      id: json['id'],
      type: json['type'],
      workflow: Workflow.fromJson(json['workflow']),
    );
  }

  String id;

  String type;

  Workflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationType &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        type == other.type &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= workflow?.hashCode ?? 0;

    return hashCode;
  }

  static List<DelegationType> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationType>[]
        : json.map((dynamic value) => DelegationType.fromJson(value)).toList();
  }

  static Map<String, DelegationType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DelegationType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationType.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (workflow != null) 'workflow': workflow,
    };
  }

  @override
  String toString() {
    return 'DelegationType[id=$id, type=$type, workflow=$workflow, ]';
  }
}
