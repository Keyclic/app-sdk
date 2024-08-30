//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaPolicyRead {
  /// Returns a new [SlaPolicyRead] instance.
  SlaPolicyRead({
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

  /// Returns a new [SlaPolicyRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaPolicyRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaPolicyRead(
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
      conditions: ConditionRead.listFromJson(json[r'conditions']),
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
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

  List<ConditionRead>? conditions;

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

    return other is SlaPolicyRead &&
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

  static List<SlaPolicyRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <SlaPolicyRead>[];
    }

    return json.fold(<SlaPolicyRead>[],
        (List<SlaPolicyRead> previousValue, element) {
      final SlaPolicyRead? object = SlaPolicyRead.fromJson(element);
      if (object is SlaPolicyRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaPolicyRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaPolicyRead>{};
    }

    return json.entries.fold(<String, SlaPolicyRead>{},
        (Map<String, SlaPolicyRead> previousValue, element) {
      final SlaPolicyRead? object = SlaPolicyRead.fromJson(element.value);
      if (object is SlaPolicyRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaPolicyRead-objects as value to a dart map
  static Map<String, List<SlaPolicyRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaPolicyRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaPolicyRead>>(
          key, SlaPolicyRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SlaPolicyRead[fromStates=$fromStates, toStates=$toStates, id=$id, timeTarget=$timeTarget, description=$description, name=$name, enabled=$enabled, conditions=$conditions, createdAt=$createdAt, updatedAt=$updatedAt]';

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
