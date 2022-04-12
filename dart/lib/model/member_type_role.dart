//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberTypeRole {
  /// Returns a new [MemberTypeRole] instance.
  MemberTypeRole({
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.permissions = const [],
    this.type,
    this.updatedAt,
  });

  /// Returns a new [MemberTypeRole] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberTypeRole? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt = DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt = DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return MemberTypeRole(
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

  String? name;

  List<String>? permissions;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberTypeRole &&
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
      (name == null ? 0 : name.hashCode) +
      (permissions == null ? 0 : permissions.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<MemberTypeRole> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberTypeRole>[];
    }
    return json
        .map((value) {
          return MemberTypeRole.fromJson(value);
        })
        .whereType<MemberTypeRole>()
        .toList();
  }

  static Map<String, MemberTypeRole> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberTypeRole>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MemberTypeRole?>(key, MemberTypeRole.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberTypeRole>;
  }

  // maps a json object with a list of MemberTypeRole-objects as value to a dart map
  static Map<String, List<MemberTypeRole>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberTypeRole>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MemberTypeRole.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'MemberTypeRole[createdAt=$createdAt, description=$description, id=$id, name=$name, permissions=$permissions, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (id != null) r'id': id,
      if (name != null) r'name': name,
      if (permissions != null) r'permissions': permissions,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
