//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConnectorJsonhalConnectorRead {
  /// Returns a new [ConnectorJsonhalConnectorRead] instance.
  ConnectorJsonhalConnectorRead({
    this.links,
    required this.name,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ConnectorJsonhalConnectorRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorJsonhalConnectorRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConnectorJsonhalConnectorRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      name: json[r'name'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

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

    return other is ConnectorJsonhalConnectorRead &&
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

  static List<ConnectorJsonhalConnectorRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConnectorJsonhalConnectorRead>[];
    }

    return json.fold(<ConnectorJsonhalConnectorRead>[],
        (List<ConnectorJsonhalConnectorRead> previousValue, element) {
      final ConnectorJsonhalConnectorRead? object =
          ConnectorJsonhalConnectorRead.fromJson(element);
      if (object is ConnectorJsonhalConnectorRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConnectorJsonhalConnectorRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConnectorJsonhalConnectorRead>{};
    }

    return json.entries.fold(<String, ConnectorJsonhalConnectorRead>{},
        (Map<String, ConnectorJsonhalConnectorRead> previousValue, element) {
      final ConnectorJsonhalConnectorRead? object =
          ConnectorJsonhalConnectorRead.fromJson(element.value);
      if (object is ConnectorJsonhalConnectorRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConnectorJsonhalConnectorRead-objects as value to a dart map
  static Map<String, List<ConnectorJsonhalConnectorRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConnectorJsonhalConnectorRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConnectorJsonhalConnectorRead>>(
          key, ConnectorJsonhalConnectorRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConnectorJsonhalConnectorRead[links=$links, name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

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
