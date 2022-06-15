//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ActivityGroup {
  /// Returns a new [ActivityGroup] instance.
  ActivityGroup({
    this.activities = const [],
    this.activityCount,
    this.actorCount,
    this.createdAt,
    this.group,
    this.id,
    this.updatedAt,
    this.verb,
    this.isRead,
    this.isSeen,
  });

  /// Returns a new [ActivityGroup] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ActivityGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'created_at'] is String
        ? DateTime.parse(json[r'created_at'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'created_at']}Z');
    }

    DateTime? updatedAt = json[r'updated_at'] is String
        ? DateTime.parse(json[r'updated_at'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updated_at']}Z');
    }

    return ActivityGroup(
      activities: Activity.listFromJson(json[r'activities']),
      activityCount: json[r'activity_count'],
      actorCount: json[r'actor_count'],
      createdAt: createdAt,
      group: json[r'group'],
      id: json[r'id'],
      updatedAt: updatedAt,
      verb: json[r'verb'],
      isRead: json[r'is_read'],
      isSeen: json[r'is_seen'],
    );
  }

  List<Activity>? activities;

  int? activityCount;

  int? actorCount;

  DateTime? createdAt;

  String? group;

  String? id;

  DateTime? updatedAt;

  String? verb;

  bool? isRead;

  bool? isSeen;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ActivityGroup &&
        DeepCollectionEquality.unordered()
            .equals(activities, other.activities) &&
        other.activityCount == activityCount &&
        other.actorCount == actorCount &&
        other.createdAt == createdAt &&
        other.group == group &&
        other.id == id &&
        other.updatedAt == updatedAt &&
        other.verb == verb &&
        other.isRead == isRead &&
        other.isSeen == isSeen;
  }

  @override
  int get hashCode =>
      (activities == null ? 0 : activities.hashCode) +
      (activityCount == null ? 0 : activityCount.hashCode) +
      (actorCount == null ? 0 : actorCount.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (group == null ? 0 : group.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (verb == null ? 0 : verb.hashCode) +
      (isRead == null ? 0 : isRead.hashCode) +
      (isSeen == null ? 0 : isSeen.hashCode);

  static List<ActivityGroup> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ActivityGroup>[];
    }
    return json
        .map((value) {
          return ActivityGroup.fromJson(value);
        })
        .whereType<ActivityGroup>()
        .toList();
  }

  static Map<String, ActivityGroup> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ActivityGroup>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ActivityGroup?>(key, ActivityGroup.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ActivityGroup>;
  }

  // maps a json object with a list of ActivityGroup-objects as value to a dart map
  static Map<String, List<ActivityGroup>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ActivityGroup>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ActivityGroup.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ActivityGroup[activities=$activities, activityCount=$activityCount, actorCount=$actorCount, createdAt=$createdAt, group=$group, id=$id, updatedAt=$updatedAt, verb=$verb, isRead=$isRead, isSeen=$isSeen]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (activities != null) r'activities': activities,
      if (activityCount != null) r'activity_count': activityCount,
      if (actorCount != null) r'actor_count': actorCount,
      if (createdAt != null)
        r'created_at': createdAt!.toUtc().toIso8601String(),
      if (group != null) r'group': group,
      if (id != null) r'id': id,
      if (updatedAt != null)
        r'updated_at': updatedAt!.toUtc().toIso8601String(),
      if (verb != null) r'verb': verb,
      if (isRead != null) r'is_read': isRead,
      if (isSeen != null) r'is_seen': isSeen,
    };
  }
}
