//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class RoleJsonhalRead {
  /// Returns a new [RoleJsonhalRead] instance.
  RoleJsonhalRead({
    this.links,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
    this.permissions,
  });

  /// Returns a new [RoleJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RoleJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RoleJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
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

  AssetTypeJsonhalReadLinks? links;

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

    return other is RoleJsonhalRead &&
        other.links == links &&
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
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (permissions == null ? 0 : permissions.hashCode);

  static List<RoleJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <RoleJsonhalRead>[];
    }

    return json.fold(<RoleJsonhalRead>[],
        (List<RoleJsonhalRead> previousValue, element) {
      final RoleJsonhalRead? object = RoleJsonhalRead.fromJson(element);
      if (object is RoleJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RoleJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RoleJsonhalRead>{};
    }

    return json.entries.fold(<String, RoleJsonhalRead>{},
        (Map<String, RoleJsonhalRead> previousValue, element) {
      final RoleJsonhalRead? object = RoleJsonhalRead.fromJson(element.value);
      if (object is RoleJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RoleJsonhalRead-objects as value to a dart map
  static Map<String, List<RoleJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RoleJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RoleJsonhalRead>>(
          key, RoleJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RoleJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name, permissions=$permissions]';

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
