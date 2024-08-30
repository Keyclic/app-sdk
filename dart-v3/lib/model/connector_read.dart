//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConnectorRead {
  /// Returns a new [ConnectorRead] instance.
  ConnectorRead({
    required this.name,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ConnectorRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConnectorRead(
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

    return other is ConnectorRead &&
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

  static List<ConnectorRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConnectorRead>[];
    }

    return json.fold(<ConnectorRead>[],
        (List<ConnectorRead> previousValue, element) {
      final ConnectorRead? object = ConnectorRead.fromJson(element);
      if (object is ConnectorRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConnectorRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConnectorRead>{};
    }

    return json.entries.fold(<String, ConnectorRead>{},
        (Map<String, ConnectorRead> previousValue, element) {
      final ConnectorRead? object = ConnectorRead.fromJson(element.value);
      if (object is ConnectorRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConnectorRead-objects as value to a dart map
  static Map<String, List<ConnectorRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConnectorRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConnectorRead>>(
          key, ConnectorRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConnectorRead[name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

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
