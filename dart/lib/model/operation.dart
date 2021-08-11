part of keyclic_sdk_api.api;

class Operation {
  Operation({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.dueBy,
    this.id,
    this.identificationNumber,
    this.name,
    this.priority,
    this.scheduledAt,
    this.signature,
    this.tags,
    this.type,
    this.updatedAt,
  });

  factory Operation.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime dueBy =
        json['dueBy'] == null ? null : DateTime.parse(json['dueBy']);
    if (dueBy is DateTime && dueBy.isUtc == false) {
      dueBy = DateTime.parse('${dueBy.toIso8601String()}Z');
    }

    DateTime scheduledAt = json['scheduledAt'] == null
        ? null
        : DateTime.parse(json['scheduledAt']);
    if (scheduledAt is DateTime && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${scheduledAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Operation(
      embedded: OperationEmbedded.fromJson(json['_embedded']),
      links: OperationLinks.fromJson(json['_links']),
      createdAt: createdAt,
      description: json['description'],
      dueBy: dueBy,
      id: json['id'],
      identificationNumber: json['identificationNumber'],
      name: json['name'],
      priority: OperationPriority.fromJson(json['priority']),
      scheduledAt: scheduledAt,
      signature: OperationSignature.fromJson(json['signature']),
      tags: json['tags'] is List ? List<String>.from(json['tags']) : null,
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  OperationEmbedded embedded;

  OperationLinks links;

  DateTime createdAt;

  String description;

  DateTime dueBy;

  String id;

  String identificationNumber;

  String name;

  OperationPriority priority;

  DateTime scheduledAt;

  OperationSignature signature;

  List<String> tags;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Operation &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        createdAt == other.createdAt &&
        description == other.description &&
        dueBy == other.dueBy &&
        id == other.id &&
        identificationNumber == other.identificationNumber &&
        name == other.name &&
        priority == other.priority &&
        scheduledAt == other.scheduledAt &&
        signature == other.signature &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (tags is List && tags.isNotEmpty) {
      hashCode ^= tags
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= dueBy?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= priority?.hashCode ?? 0;
    hashCode ^= scheduledAt?.hashCode ?? 0;
    hashCode ^= signature?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Operation> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Operation.fromJson(value))?.toList() ??
        <Operation>[];
  }

  static Map<String, Operation> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Operation>((String key, dynamic value) {
          return MapEntry(key, Operation.fromJson(value));
        }) ??
        <String, Operation>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded.toJson(),
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (dueBy != null) 'dueBy': dueBy.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (name != null) 'name': name,
      if (priority != null) 'priority': priority.toJson(),
      if (scheduledAt != null)
        'scheduledAt': scheduledAt.toUtc().toIso8601String(),
      if (signature != null) 'signature': signature.toJson(),
      if (tags != null) 'tags': tags,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Operation[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, dueBy=$dueBy, id=$id, identificationNumber=$identificationNumber, name=$name, priority=$priority, scheduledAt=$scheduledAt, signature=$signature, tags=$tags, type=$type, updatedAt=$updatedAt, ]';
  }
}
