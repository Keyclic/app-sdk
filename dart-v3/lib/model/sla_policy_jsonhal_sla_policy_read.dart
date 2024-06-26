//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaPolicyJsonhalSlaPolicyRead {
  /// Returns a new [SlaPolicyJsonhalSlaPolicyRead] instance.
  SlaPolicyJsonhalSlaPolicyRead({
    this.links,
    this.id,
    required this.timeTarget,
    this.description,
    required this.name,
    this.enabled,
    this.conditions,
    this.createdAt,
    this.updatedAt,
    this.embedded,
  });

  /// Returns a new [SlaPolicyJsonhalSlaPolicyRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaPolicyJsonhalSlaPolicyRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaPolicyJsonhalSlaPolicyRead(
      links: SlaPolicyJsonhalSlaPolicyReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      timeTarget: json[r'timeTarget'],
      description: json[r'description'],
      name: json[r'name'],
      enabled: json[r'enabled'],
      conditions:
          ConditionJsonhalSlaPolicyRead.listFromJson(json[r'conditions']),
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      embedded:
          SlaPolicyJsonhalSlaPolicyReadEmbedded.fromJson(json[r'_embedded']),
    );
  }

  SlaPolicyJsonhalSlaPolicyReadLinks? links;

  /// The resource identifier.
  final String? id;

  String timeTarget;

  String? description;

  String name;

  bool? enabled;

  List<ConditionJsonhalSlaPolicyRead>? conditions;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  SlaPolicyJsonhalSlaPolicyReadEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SlaPolicyJsonhalSlaPolicyRead &&
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
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      timeTarget.hashCode +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (enabled == null ? 0 : enabled.hashCode) +
      (conditions == null ? 0 : conditions.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<SlaPolicyJsonhalSlaPolicyRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <SlaPolicyJsonhalSlaPolicyRead>[];
    }

    return json.fold(<SlaPolicyJsonhalSlaPolicyRead>[],
        (List<SlaPolicyJsonhalSlaPolicyRead> previousValue, element) {
      final SlaPolicyJsonhalSlaPolicyRead? object =
          SlaPolicyJsonhalSlaPolicyRead.fromJson(element);
      if (object is SlaPolicyJsonhalSlaPolicyRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaPolicyJsonhalSlaPolicyRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaPolicyJsonhalSlaPolicyRead>{};
    }

    return json.entries.fold(<String, SlaPolicyJsonhalSlaPolicyRead>{},
        (Map<String, SlaPolicyJsonhalSlaPolicyRead> previousValue, element) {
      final SlaPolicyJsonhalSlaPolicyRead? object =
          SlaPolicyJsonhalSlaPolicyRead.fromJson(element.value);
      if (object is SlaPolicyJsonhalSlaPolicyRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaPolicyJsonhalSlaPolicyRead-objects as value to a dart map
  static Map<String, List<SlaPolicyJsonhalSlaPolicyRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaPolicyJsonhalSlaPolicyRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaPolicyJsonhalSlaPolicyRead>>(
          key, SlaPolicyJsonhalSlaPolicyRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SlaPolicyJsonhalSlaPolicyRead[links=$links, id=$id, timeTarget=$timeTarget, description=$description, name=$name, enabled=$enabled, conditions=$conditions, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
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
