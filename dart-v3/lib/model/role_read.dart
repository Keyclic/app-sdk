//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class RoleRead {
  /// Returns a new [RoleRead] instance.
  RoleRead({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
    this.permissions,
  });

  /// Returns a new [RoleRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RoleRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RoleRead(
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      description: json[r'description'],
      name: json[r'name'],
      permissions: json[r'permissions'] == null
          ? null
          : List<String>.from(json[r'permissions']),
    );
  }

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? description;

  String name;

  List<String>? permissions;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RoleRead &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name &&
        DeepCollectionEquality.unordered()
            .equals(permissions, other.permissions);
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (permissions == null ? 0 : permissions.hashCode);

  static List<RoleRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <RoleRead>[];
    }

    return json.fold(<RoleRead>[], (List<RoleRead> previousValue, element) {
      final RoleRead? object = RoleRead.fromJson(element);
      if (object is RoleRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RoleRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RoleRead>{};
    }

    return json.entries.fold(<String, RoleRead>{},
        (Map<String, RoleRead> previousValue, element) {
      final RoleRead? object = RoleRead.fromJson(element.value);
      if (object is RoleRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RoleRead-objects as value to a dart map
  static Map<String, List<RoleRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RoleRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RoleRead>>(
          key, RoleRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RoleRead[id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name, permissions=$permissions]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
      if (keys == null || keys.contains(r'permissions'))
        r'permissions': permissions,
    };
  }
}
