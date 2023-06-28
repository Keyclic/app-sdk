//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConnectorJsonhalConnectorRead {
  /// Returns a new [ConnectorJsonhalConnectorRead] instance.
  ConnectorJsonhalConnectorRead({
    this.links,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ConnectorJsonhalConnectorRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorJsonhalConnectorRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return ConnectorJsonhalConnectorRead(
      links: AssetJsonhalReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  AssetJsonhalReadLinks? links;

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
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ConnectorJsonhalConnectorRead> listFromJson(List<dynamic>? json) {
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
      'ConnectorJsonhalConnectorRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (id != null) r'id': id,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
