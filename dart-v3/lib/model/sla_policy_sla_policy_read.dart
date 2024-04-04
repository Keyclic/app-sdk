//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaPolicySlaPolicyRead {
  /// Returns a new [SlaPolicySlaPolicyRead] instance.
  SlaPolicySlaPolicyRead({
    this.fromStates,
    this.toStates,
    this.id,
    required this.timeTarget,
    this.description,
    required this.name,
    this.enabled,
    this.conditions,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [SlaPolicySlaPolicyRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaPolicySlaPolicyRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return SlaPolicySlaPolicyRead(
      fromStates: json[r'fromStates'] == null
          ? null
          : List<String>.from(json[r'fromStates']),
      toStates: json[r'toStates'] == null
          ? null
          : List<String>.from(json[r'toStates']),
      id: json[r'id'],
      timeTarget: json[r'timeTarget'],
      description: json[r'description'],
      name: json[r'name'],
      enabled: json[r'enabled'],
      conditions: ConditionSlaPolicyRead.mapFromJson(json[r'conditions']),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  List<String>? fromStates;

  List<String>? toStates;

  /// The resource identifier.
  final String? id;

  String timeTarget;

  String? description;

  String name;

  bool? enabled;

  Map<String, ConditionSlaPolicyRead>? conditions;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SlaPolicySlaPolicyRead &&
        DeepCollectionEquality.unordered()
            .equals(fromStates, other.fromStates) &&
        DeepCollectionEquality.unordered().equals(toStates, other.toStates) &&
        other.id == id &&
        other.timeTarget == timeTarget &&
        other.description == description &&
        other.name == name &&
        other.enabled == enabled &&
        DeepCollectionEquality.unordered()
            .equals(conditions, other.conditions) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (fromStates == null ? 0 : fromStates.hashCode) +
      (toStates == null ? 0 : toStates.hashCode) +
      (id == null ? 0 : id.hashCode) +
      timeTarget.hashCode +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (enabled == null ? 0 : enabled.hashCode) +
      (conditions == null ? 0 : conditions.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<SlaPolicySlaPolicyRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SlaPolicySlaPolicyRead>[];
    }

    return json.fold(<SlaPolicySlaPolicyRead>[],
        (List<SlaPolicySlaPolicyRead> previousValue, element) {
      final SlaPolicySlaPolicyRead? object =
          SlaPolicySlaPolicyRead.fromJson(element);
      if (object is SlaPolicySlaPolicyRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaPolicySlaPolicyRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaPolicySlaPolicyRead>{};
    }

    return json.entries.fold(<String, SlaPolicySlaPolicyRead>{},
        (Map<String, SlaPolicySlaPolicyRead> previousValue, element) {
      final SlaPolicySlaPolicyRead? object =
          SlaPolicySlaPolicyRead.fromJson(element.value);
      if (object is SlaPolicySlaPolicyRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaPolicySlaPolicyRead-objects as value to a dart map
  static Map<String, List<SlaPolicySlaPolicyRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaPolicySlaPolicyRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaPolicySlaPolicyRead>>(
          key, SlaPolicySlaPolicyRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SlaPolicySlaPolicyRead[fromStates=$fromStates, toStates=$toStates, id=$id, timeTarget=$timeTarget, description=$description, name=$name, enabled=$enabled, conditions=$conditions, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'fromStates'))
        r'fromStates': fromStates,
      if (keys == null || keys.contains(r'toStates')) r'toStates': toStates,
      if (keys == null || keys.contains(r'id')) r'id': id,
      r'timeTarget': timeTarget,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
      if (keys == null || keys.contains(r'conditions'))
        r'conditions': conditions,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
