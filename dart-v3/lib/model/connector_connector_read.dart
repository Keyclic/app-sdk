//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConnectorConnectorRead {
  /// Returns a new [ConnectorConnectorRead] instance.
  ConnectorConnectorRead({
    required this.name,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ConnectorConnectorRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorConnectorRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConnectorConnectorRead(
      name: json[r'name'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

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

    return other is ConnectorConnectorRead &&
        other.name == name &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      name.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ConnectorConnectorRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConnectorConnectorRead>[];
    }

    return json.fold(<ConnectorConnectorRead>[],
        (List<ConnectorConnectorRead> previousValue, element) {
      final ConnectorConnectorRead? object =
          ConnectorConnectorRead.fromJson(element);
      if (object is ConnectorConnectorRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConnectorConnectorRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConnectorConnectorRead>{};
    }

    return json.entries.fold(<String, ConnectorConnectorRead>{},
        (Map<String, ConnectorConnectorRead> previousValue, element) {
      final ConnectorConnectorRead? object =
          ConnectorConnectorRead.fromJson(element.value);
      if (object is ConnectorConnectorRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConnectorConnectorRead-objects as value to a dart map
  static Map<String, List<ConnectorConnectorRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConnectorConnectorRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConnectorConnectorRead>>(
          key, ConnectorConnectorRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConnectorConnectorRead[name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'name': name,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
