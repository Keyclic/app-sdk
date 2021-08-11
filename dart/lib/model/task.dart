part of keyclic_sdk_api.api;

class Task {
  Task({
    this.createdAt,
    this.description,
    this.dueBy,
    this.id,
    this.identificationNumber,
    this.priority,
    this.scheduledAt,
    this.tags,
    this.type,
    this.updatedAt,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
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

    return Task(
      createdAt: createdAt,
      description: json['description'],
      dueBy: dueBy,
      id: json['id'],
      identificationNumber: json['identificationNumber'],
      priority: TaskPriority.fromJson(json['priority']),
      scheduledAt: scheduledAt,
      tags: json['tags'] is List ? List<String>.from(json['tags']) : null,
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  DateTime createdAt;

  String description;

  DateTime dueBy;

  String id;

  String identificationNumber;

  TaskPriority priority;

  DateTime scheduledAt;

  List<String> tags;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Task &&
        runtimeType == other.runtimeType &&
        createdAt == other.createdAt &&
        description == other.description &&
        dueBy == other.dueBy &&
        id == other.id &&
        identificationNumber == other.identificationNumber &&
        priority == other.priority &&
        scheduledAt == other.scheduledAt &&
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

    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= dueBy?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= priority?.hashCode ?? 0;
    hashCode ^= scheduledAt?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Task> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Task.fromJson(value))?.toList() ??
        <Task>[];
  }

  static Map<String, Task> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Task>((String key, dynamic value) {
          return MapEntry(key, Task.fromJson(value));
        }) ??
        <String, Task>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (dueBy != null) 'dueBy': dueBy.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (priority != null) 'priority': priority.toJson(),
      if (scheduledAt != null)
        'scheduledAt': scheduledAt.toUtc().toIso8601String(),
      if (tags != null) 'tags': tags,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Task[createdAt=$createdAt, description=$description, dueBy=$dueBy, id=$id, identificationNumber=$identificationNumber, priority=$priority, scheduledAt=$scheduledAt, tags=$tags, type=$type, updatedAt=$updatedAt, ]';
  }
}
