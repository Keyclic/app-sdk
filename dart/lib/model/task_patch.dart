//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TaskPatch {
  /// Returns a new [TaskPatch] instance.
  TaskPatch({
    this.category,
    this.description,
    this.dueBy,
    this.identificationNumber,
    this.name,
    this.priority,
    this.scheduledAt,
    this.tags = const [],
  });

  /// Returns a new [TaskPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TaskPatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? dueBy =
        json[r'dueBy'] is String ? DateTime.parse(json[r'dueBy']) : null;
    if (dueBy is DateTime && dueBy.isUtc == false) {
      dueBy = DateTime.parse('${json[r'dueBy']}Z');
    }

    DateTime? scheduledAt = json[r'scheduledAt'] is String
        ? DateTime.parse(json[r'scheduledAt'])
        : null;
    if (scheduledAt is DateTime && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${json[r'scheduledAt']}Z');
    }

    return TaskPatch(
      category: json[r'category'],
      description: json[r'description'],
      dueBy: dueBy,
      identificationNumber: json[r'identificationNumber'],
      name: json[r'name'],
      priority: json[r'priority'],
      scheduledAt: scheduledAt,
      tags: List<String>.from(json[r'tags'] ?? []),
    );
  }

  String? category;

  String? description;

  DateTime? dueBy;

  String? identificationNumber;

  String? name;

  String? priority;

  DateTime? scheduledAt;

  List<String>? tags;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TaskPatch &&
        other.category == category &&
        other.description == description &&
        other.dueBy == dueBy &&
        other.identificationNumber == identificationNumber &&
        other.name == name &&
        other.priority == priority &&
        other.scheduledAt == scheduledAt &&
        DeepCollectionEquality.unordered().equals(tags, other.tags);
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (dueBy == null ? 0 : dueBy.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (priority == null ? 0 : priority.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      (tags == null ? 0 : tags.hashCode);

  static List<TaskPatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TaskPatch>[];
    }

    return json.fold(<TaskPatch>[], (List<TaskPatch> previousValue, element) {
      final TaskPatch? object = TaskPatch.fromJson(element);
      if (object is TaskPatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TaskPatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TaskPatch>{};
    }

    return json.entries.fold(<String, TaskPatch>{},
        (Map<String, TaskPatch> previousValue, element) {
      final TaskPatch? object = TaskPatch.fromJson(element.value);
      if (object is TaskPatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TaskPatch-objects as value to a dart map
  static Map<String, List<TaskPatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TaskPatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TaskPatch>>(
          key, TaskPatch.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TaskPatch[category=$category, description=$description, dueBy=$dueBy, identificationNumber=$identificationNumber, name=$name, priority=$priority, scheduledAt=$scheduledAt, tags=$tags]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (category != null) r'category': category,
      if (description != null) r'description': description,
      if (dueBy != null) r'dueBy': dueBy!.toUtc().toIso8601String(),
      if (identificationNumber != null)
        r'identificationNumber': identificationNumber,
      if (name != null) r'name': name,
      if (priority != null) r'priority': priority,
      if (scheduledAt != null)
        r'scheduledAt': scheduledAt!.toUtc().toIso8601String(),
      if (tags != null) r'tags': tags,
    };
  }
}
