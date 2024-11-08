//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConnectorJsonhalRead {
  /// Returns a new [ConnectorJsonhalRead] instance.
  ConnectorJsonhalRead({
    this.links,
    required this.name,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ConnectorJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConnectorJsonhalRead(
      links: ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(
          json[r'_links']),
      name: json[r'name'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  ArchivingJsonhalOrganizationPreferenceReadLinks? links;

  String name;

  /// The resource identifier.
  final String? id;

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

    return other is ConnectorJsonhalRead &&
        other.links == links &&
        other.name == name &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      name.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ConnectorJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConnectorJsonhalRead>[];
    }

    return json.fold(<ConnectorJsonhalRead>[],
        (List<ConnectorJsonhalRead> previousValue, element) {
      final ConnectorJsonhalRead? object =
          ConnectorJsonhalRead.fromJson(element);
      if (object is ConnectorJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConnectorJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConnectorJsonhalRead>{};
    }

    return json.entries.fold(<String, ConnectorJsonhalRead>{},
        (Map<String, ConnectorJsonhalRead> previousValue, element) {
      final ConnectorJsonhalRead? object =
          ConnectorJsonhalRead.fromJson(element.value);
      if (object is ConnectorJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConnectorJsonhalRead-objects as value to a dart map
  static Map<String, List<ConnectorJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConnectorJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConnectorJsonhalRead>>(
          key, ConnectorJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConnectorJsonhalRead[links=$links, name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

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
      r'name': name,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
