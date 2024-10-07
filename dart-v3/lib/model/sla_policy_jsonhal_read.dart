//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaPolicyJsonhalRead {
  /// Returns a new [SlaPolicyJsonhalRead] instance.
  SlaPolicyJsonhalRead({
    required this.links,
    required this.id,
    required this.timeTarget,
    this.description,
    required this.name,
    required this.enabled,
    this.conditions = const [],
    required this.createdAt,
    required this.updatedAt,
    this.embedded,
  });

  /// Returns a new [SlaPolicyJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaPolicyJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaPolicyJsonhalRead(
      links: SlaPolicyJsonhalReadLinks.fromJson(json[r'_links'])!,
      id: json[r'id'],
      timeTarget: json[r'timeTarget'],
      description: json[r'description'],
      name: json[r'name'],
      enabled: json[r'enabled'],
      conditions: ConditionJsonhalRead.listFromJson(json[r'conditions']),
      createdAt: mapToDateTime(json[r'createdAt'])!,
      updatedAt: mapToDateTime(json[r'updatedAt'])!,
      embedded: SlaPolicyJsonhalReadEmbedded.fromJson(json[r'_embedded']),
    );
  }

  SlaPolicyJsonhalReadLinks links;

  /// The resource identifier.
  final String id;

  String timeTarget;

  String? description;

  String name;

  bool enabled;

  List<ConditionJsonhalRead> conditions;

  /// The date and time when the resource was created, in UTC format.
  final DateTime createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime updatedAt;

  SlaPolicyJsonhalReadEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SlaPolicyJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.timeTarget == timeTarget &&
        other.description == description &&
        other.name == name &&
        other.enabled == enabled &&
        DeepCollectionEquality.unordered()
            .equals(conditions, other.conditions) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      links.hashCode +
      id.hashCode +
      timeTarget.hashCode +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      enabled.hashCode +
      conditions.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      (embedded == null ? 0 : embedded.hashCode);

  static List<SlaPolicyJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <SlaPolicyJsonhalRead>[];
    }

    return json.fold(<SlaPolicyJsonhalRead>[],
        (List<SlaPolicyJsonhalRead> previousValue, element) {
      final SlaPolicyJsonhalRead? object =
          SlaPolicyJsonhalRead.fromJson(element);
      if (object is SlaPolicyJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaPolicyJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaPolicyJsonhalRead>{};
    }

    return json.entries.fold(<String, SlaPolicyJsonhalRead>{},
        (Map<String, SlaPolicyJsonhalRead> previousValue, element) {
      final SlaPolicyJsonhalRead? object =
          SlaPolicyJsonhalRead.fromJson(element.value);
      if (object is SlaPolicyJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaPolicyJsonhalRead-objects as value to a dart map
  static Map<String, List<SlaPolicyJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaPolicyJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaPolicyJsonhalRead>>(
          key, SlaPolicyJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SlaPolicyJsonhalRead[links=$links, id=$id, timeTarget=$timeTarget, description=$description, name=$name, enabled=$enabled, conditions=$conditions, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'_links': links.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^links\.'))) {
          previousValue.add(element.split(RegExp(r'^links\.')).last);
        }

        return previousValue;
      })),
      r'id': id,
      r'timeTarget': timeTarget,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
      r'enabled': enabled,
      r'conditions': conditions,
      r'createdAt': createdAt.toUtc().toIso8601String(),
      r'updatedAt': updatedAt.toUtc().toIso8601String(),
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
