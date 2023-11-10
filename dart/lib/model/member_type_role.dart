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
    this.permissions,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [MemberTypeRole] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberTypeRole? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return MemberTypeRole(
      createdAt: createdAt,
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      permissions: json[r'permissions'] == null
          ? null
          : List<String>.from(json[r'permissions']),
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

    return json.fold(<MemberTypeRole>[],
        (List<MemberTypeRole> previousValue, element) {
      final MemberTypeRole? object = MemberTypeRole.fromJson(element);
      if (object is MemberTypeRole) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberTypeRole> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberTypeRole>{};
    }

    return json.entries.fold(<String, MemberTypeRole>{},
        (Map<String, MemberTypeRole> previousValue, element) {
      final MemberTypeRole? object = MemberTypeRole.fromJson(element.value);
      if (object is MemberTypeRole) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberTypeRole-objects as value to a dart map
  static Map<String, List<MemberTypeRole>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberTypeRole>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberTypeRole>>(
          key, MemberTypeRole.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberTypeRole[createdAt=$createdAt, description=$description, id=$id, name=$name, permissions=$permissions, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && permissions != null) ||
          (keys?.contains(r'permissions') ?? false))
        r'permissions': permissions,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
