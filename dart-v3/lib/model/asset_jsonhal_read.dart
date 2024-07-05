//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssetJsonhalRead {
  /// Returns a new [AssetJsonhalRead] instance.
  AssetJsonhalRead({
    this.links,
    this.description,
    required this.name,
    this.preferences,
    this.id,
    this.path,
    this.address,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [AssetJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssetJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssetJsonhalRead(
      links: AssetJsonhalReadLinks.fromJson(json[r'_links']),
      description: json[r'description'],
      name: json[r'name'],
      preferences: PreferencesJsonhalRead.fromJson(json[r'preferences']),
      id: json[r'id'],
      path: NodeJsonhalRead.listFromJson(json[r'path']),
      address: PostalAddressJsonhalRead.fromJson(json[r'address']),
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  AssetJsonhalReadLinks? links;

  String? description;

  String name;

  PreferencesJsonhalRead? preferences;

  /// The resource identifier.
  final String? id;

  final List<NodeJsonhalRead>? path;

  PostalAddressJsonhalRead? address;

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

    return other is AssetJsonhalRead &&
        other.links == links &&
        other.description == description &&
        other.name == name &&
        other.preferences == preferences &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(path, other.path) &&
        other.address == address &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (path == null ? 0 : path.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<AssetJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssetJsonhalRead>[];
    }

    return json.fold(<AssetJsonhalRead>[],
        (List<AssetJsonhalRead> previousValue, element) {
      final AssetJsonhalRead? object = AssetJsonhalRead.fromJson(element);
      if (object is AssetJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssetJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssetJsonhalRead>{};
    }

    return json.entries.fold(<String, AssetJsonhalRead>{},
        (Map<String, AssetJsonhalRead> previousValue, element) {
      final AssetJsonhalRead? object = AssetJsonhalRead.fromJson(element.value);
      if (object is AssetJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssetJsonhalRead-objects as value to a dart map
  static Map<String, List<AssetJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssetJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssetJsonhalRead>>(
          key, AssetJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssetJsonhalRead[links=$links, description=$description, name=$name, preferences=$preferences, id=$id, path=$path, address=$address, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    };
  }
}
