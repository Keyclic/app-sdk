part of keyclic_sdk_api.api;

class WorkflowTransition {
  WorkflowTransition({
    this.fields,
    this.description,
    this.from,
    this.id,
    this.name,
    this.required,
    this.to,
    this.type,
  });

  factory WorkflowTransition.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowTransition(
      fields: json['fields'] is List ? List<String>.from(json['fields']) : null,
      description: json['description'],
      from: WorkflowState.fromJson(json['from']),
      id: json['id'],
      name: json['name'],
      required:
          json['required'] is List ? List<String>.from(json['required']) : null,
      to: WorkflowState.fromJson(json['to']),
      type: json['type'],
    );
  }

  List<String> fields;

  String description;

  WorkflowState from;

  String id;

  String name;

  List<String> required;

  WorkflowState to;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowTransition &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(fields, other.fields) &&
        description == other.description &&
        from == other.from &&
        id == other.id &&
        name == other.name &&
        DeepCollectionEquality.unordered().equals(required, other.required) &&
        to == other.to &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (fields is List && fields.isNotEmpty) {
      hashCode ^= fields
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (required is List && required.isNotEmpty) {
      hashCode ^= required
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= from?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= to?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<WorkflowTransition> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WorkflowTransition.fromJson(value))
            ?.toList() ??
        <WorkflowTransition>[];
  }

  static Map<String, WorkflowTransition> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, WorkflowTransition>((String key, dynamic value) {
          return MapEntry(key, WorkflowTransition.fromJson(value));
        }) ??
        <String, WorkflowTransition>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (fields != null) 'fields': fields,
      if (description != null) 'description': description,
      if (from != null) 'from': from.toJson(),
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (required != null) 'required': required,
      if (to != null) 'to': to.toJson(),
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'WorkflowTransition[fields=$fields, description=$description, from=$from, id=$id, name=$name, required=$required, to=$to, type=$type, ]';
  }
}
