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

    return json.fold(<ActivityEntity>[],
        (List<ActivityEntity> previousValue, element) {
      final ActivityEntity? object = ActivityEntity.fromJson(element);
      if (object is ActivityEntity) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ActivityEntity> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ActivityEntity>{};
    }

    return json.entries.fold(<String, ActivityEntity>{},
        (Map<String, ActivityEntity> previousValue, element) {
      final ActivityEntity? object = ActivityEntity.fromJson(element.value);
      if (object is ActivityEntity) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ActivityEntity-objects as value to a dart map
  static Map<String, List<ActivityEntity>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ActivityEntity>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ActivityEntity>>(
          key, ActivityEntity.listFromJson(value));
    });
  }

  @override
  String toString() => 'ActivityEntity[id=$id, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
