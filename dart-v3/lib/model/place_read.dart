//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PlaceRead {
  /// Returns a new [PlaceRead] instance.
  PlaceRead({
    this.type,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
    this.preferences,
    this.path,
    this.address,
    this.parent,
    this.state,
  });

  /// Returns a new [PlaceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceRead(
      type: json[r'type'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      description: json[r'description'],
      name: json[r'name'],
      preferences: PreferencesAssetRead.fromJson(json[r'preferences']),
      path: NodeRead.listFromJson(json[r'path']),
      address: PostalAddressRead.fromJson(json[r'address']),
      parent: json[r'parent'],
      state: json[r'state'],
    );
  }

  String? type;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? description;

  String name;

  PreferencesAssetRead? preferences;

  final List<NodeRead>? path;

  PostalAddressRead? address;

  String? parent;

  String? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceRead &&
        other.type == type &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name &&
        other.preferences == preferences &&
        DeepCollectionEquality.unordered().equals(path, other.path) &&
        other.address == address &&
        other.parent == parent &&
        other.state == state;
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (path == null ? 0 : path.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<PlaceRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceRead>[];
    }

    return json.fold(<PlaceRead>[], (List<PlaceRead> previousValue, element) {
      final PlaceRead? object = PlaceRead.fromJson(element);
      if (object is PlaceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceRead>{};
    }

    return json.entries.fold(<String, PlaceRead>{},
        (Map<String, PlaceRead> previousValue, element) {
      final PlaceRead? object = PlaceRead.fromJson(element.value);
      if (object is PlaceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceRead-objects as value to a dart map
  static Map<String, List<PlaceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceRead>>(
          key, PlaceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceRead[type=$type, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name, preferences=$preferences, path=$path, address=$address, parent=$parent, state=$state]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
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
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
      if (keys == null || keys.contains(r'state')) r'state': state,
    };
  }
}
