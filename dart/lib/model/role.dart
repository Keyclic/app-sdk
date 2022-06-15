//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Role {
  /// Returns a new [Role] instance.
  Role({
    this.createdAt,
    this.description,
    this.id,
    required this.name,
    this.permissions = const [],
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Role] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Role? fromJson(Map<String, dynamic>? json) {
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

    return Role(
      createdAt: createdAt,
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      permissions: List<String>.from(json[r'permissions'] ?? []),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  final DateTime? createdAt;

  String? description;

  final String? id;

  String name;

  List<String>? permissions;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Role &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.id == id &&
        other.name == name &&
        DeepCollectionEquality.unordered()
            .equals(permissions, other.permissions) &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      name.hashCode +
      (permissions == null ? 0 : permissions.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Role> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Role>[];
    }
    return json
        .map((value) {
          return Role.fromJson(value);
        })
        .whereType<Role>()
        .toList();
  }

  static Map<String, Role> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Role>{};
    }

    final map = json
        .map((key, value) => MapEntry<String, Role?>(key, Role.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Role>;
  }

  // maps a json object with a list of Role-objects as value to a dart map
  static Map<String, List<Role>> mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<Role>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Role.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Role[createdAt=$createdAt, description=$description, id=$id, name=$name, permissions=$permissions, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (id != null) r'id': id,
      r'name': name,
      if (permissions != null) r'permissions': permissions,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
