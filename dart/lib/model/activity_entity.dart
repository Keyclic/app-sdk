//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ActivityEntity {
  /// Returns a new [ActivityEntity] instance.
  ActivityEntity({
    this.id,
    this.type,
  });

  /// Returns a new [ActivityEntity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ActivityEntity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ActivityEntity(
      id: json[r'id'],
      type: json[r'type'],
    );
  }

  final String? id;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ActivityEntity && other.id == id && other.type == type;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) + (type == null ? 0 : type.hashCode);

  static List<ActivityEntity> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ActivityEntity>[];
    }
    return json
        .map((value) {
          return ActivityEntity.fromJson(value);
        })
        .whereType<ActivityEntity>()
        .toList();
  }

  static Map<String, ActivityEntity> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ActivityEntity>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ActivityEntity?>(key, ActivityEntity.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ActivityEntity>;
  }

  // maps a json object with a list of ActivityEntity-objects as value to a dart map
  static Map<String, List<ActivityEntity>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ActivityEntity>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ActivityEntity.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ActivityEntity[id=$id, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (type != null) r'type': type,
    };
  }
}
