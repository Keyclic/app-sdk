part of keyclic_sdk_api.api;

class TaskPatch {
  TaskPatch({
    this.category,
    this.description,
    this.dueBy,
    this.identificationNumber,
    this.name,
    this.priority,
    this.scheduledAt,
    this.tags,
  });

  factory TaskPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
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

    return TaskPatch(
      category: json['category'],
      description: json['description'],
      dueBy: dueBy,
      identificationNumber: json['identificationNumber'],
      name: json['name'],
      priority: json['priority'],
      scheduledAt: scheduledAt,
      tags: json['tags'] is List ? List<String>.from(json['tags']) : null,
    );
  }

  String category;

  String description;

  DateTime dueBy;

  String identificationNumber;

  String name;

  String priority;

  DateTime scheduledAt;

  List<String> tags;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TaskPatch &&
        runtimeType == other.runtimeType &&
        category == other.category &&
        description == other.description &&
        dueBy == other.dueBy &&
        identificationNumber == other.identificationNumber &&
        name == other.name &&
        priority == other.priority &&
        scheduledAt == other.scheduledAt &&
        DeepCollectionEquality.unordered().equals(tags, other.tags);
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

    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= dueBy?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= priority?.hashCode ?? 0;
    hashCode ^= scheduledAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<TaskPatch> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => TaskPatch.fromJson(value))?.toList() ??
        <TaskPatch>[];
  }

  static Map<String, TaskPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, TaskPatch>((String key, dynamic value) {
          return MapEntry(key, TaskPatch.fromJson(value));
        }) ??
        <String, TaskPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (category != null) 'category': category,
      if (description != null) 'description': description,
      if (dueBy != null) 'dueBy': dueBy.toUtc().toIso8601String(),
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (name != null) 'name': name,
      if (priority != null) 'priority': priority,
      if (scheduledAt != null)
        'scheduledAt': scheduledAt.toUtc().toIso8601String(),
      if (tags != null) 'tags': tags,
    };
  }

  @override
  String toString() {
    return 'TaskPatch[category=$category, description=$description, dueBy=$dueBy, identificationNumber=$identificationNumber, name=$name, priority=$priority, scheduledAt=$scheduledAt, tags=$tags, ]';
  }
}
