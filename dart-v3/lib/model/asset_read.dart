//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssetRead {
  /// Returns a new [AssetRead] instance.
  AssetRead({
    this.type,
    this.description,
    required this.name,
    this.preferences,
    this.id,
    this.path,
    this.address,
    this.createdAt,
    this.updatedAt,
    this.parent,
    this.state,
  });

  /// Returns a new [AssetRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssetRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssetRead(
      type: json[r'type'],
      description: json[r'description'],
      name: json[r'name'],
      preferences: PreferencesAssetRead.fromJson(json[r'preferences']),
      id: json[r'id'],
      path: NodeRead.listFromJson(json[r'path']),
      address: PostalAddressRead.fromJson(json[r'address']),
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      parent: json[r'parent'],
      state: json[r'state'],
    );
  }

  String? type;

  String? description;

  String name;

  PreferencesAssetRead? preferences;

  /// The resource identifier.
  final String? id;

  final List<NodeRead>? path;

  PostalAddressRead? address;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? parent;

  String? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssetRead &&
        other.type == type &&
        other.description == description &&
        other.name == name &&
        other.preferences == preferences &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(path, other.path) &&
        other.address == address &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.parent == parent &&
        other.state == state;
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (path == null ? 0 : path.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<AssetRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssetRead>[];
    }

    return json.fold(<AssetRead>[], (List<AssetRead> previousValue, element) {
      final AssetRead? object = AssetRead.fromJson(element);
      if (object is AssetRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssetRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssetRead>{};
    }

    return json.entries.fold(<String, AssetRead>{},
        (Map<String, AssetRead> previousValue, element) {
      final AssetRead? object = AssetRead.fromJson(element.value);
      if (object is AssetRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssetRead-objects as value to a dart map
  static Map<String, List<AssetRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssetRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssetRead>>(
          key, AssetRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssetRead[type=$type, description=$description, name=$name, preferences=$preferences, id=$id, path=$path, address=$address, createdAt=$createdAt, updatedAt=$updatedAt, parent=$parent, state=$state]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
      if (keys == null ||
          keys.any((key) => RegExp(r'^preferences\.').hasMatch(key)))
        r'preferences': preferences?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^preferences\.'))) {
            previousValue.add(element.split(RegExp(r'^preferences\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'path')) r'path': path,
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
      if (keys == null || keys.contains(r'state')) r'state': state,
    };
  }
}
