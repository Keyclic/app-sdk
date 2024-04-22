//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ActivityGroup {
  /// Returns a new [ActivityGroup] instance.
  ActivityGroup({
    this.activities,
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
  static ActivityGroup? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ActivityGroup(
      activities: Activity.listFromJson(json[r'activities']),
      activityCount: json[r'activity_count'],
      actorCount: json[r'actor_count'],
      createdAt: mapToDateTime(json[r'created_at']),
      group: json[r'group'],
      id: json[r'id'],
      updatedAt: mapToDateTime(json[r'updated_at']),
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

  static List<ActivityGroup> listFromJson(Iterable? json) {
    if (json == null) {
      return <ActivityGroup>[];
    }

    return json.fold(<ActivityGroup>[],
        (List<ActivityGroup> previousValue, element) {
      final ActivityGroup? object = ActivityGroup.fromJson(element);
      if (object is ActivityGroup) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ActivityGroup> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ActivityGroup>{};
    }

    return json.entries.fold(<String, ActivityGroup>{},
        (Map<String, ActivityGroup> previousValue, element) {
      final ActivityGroup? object = ActivityGroup.fromJson(element.value);
      if (object is ActivityGroup) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ActivityGroup-objects as value to a dart map
  static Map<String, List<ActivityGroup>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ActivityGroup>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ActivityGroup>>(
          key, ActivityGroup.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ActivityGroup[activities=$activities, activityCount=$activityCount, actorCount=$actorCount, createdAt=$createdAt, group=$group, id=$id, updatedAt=$updatedAt, verb=$verb, isRead=$isRead, isSeen=$isSeen]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'activities'))
        r'activities': activities,
      if (keys == null || keys.contains(r'activityCount'))
        r'activity_count': activityCount,
      if (keys == null || keys.contains(r'actorCount'))
        r'actor_count': actorCount,
      if (keys == null || keys.contains(r'createdAt'))
        r'created_at': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'group')) r'group': group,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updated_at': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'verb')) r'verb': verb,
      if (keys == null || keys.contains(r'isRead')) r'is_read': isRead,
      if (keys == null || keys.contains(r'isSeen')) r'is_seen': isSeen,
    };
  }
}
