//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PlaceJsonhalRead {
  /// Returns a new [PlaceJsonhalRead] instance.
  PlaceJsonhalRead({
    this.links,
    this.branchCode,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
    this.preferences,
    this.path,
    this.address,
  });

  /// Returns a new [PlaceJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceJsonhalRead(
      links: AssetJsonhalReadLinks.fromJson(json[r'_links']),
      branchCode: json[r'branchCode'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      description: json[r'description'],
      name: json[r'name'],
      preferences: PreferencesJsonhalAssetRead.fromJson(json[r'preferences']),
      path: NodeJsonhalRead.listFromJson(json[r'path']),
      address: PostalAddressJsonhalRead.fromJson(json[r'address']),
    );
  }

  AssetJsonhalReadLinks? links;

  String? branchCode;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? description;

  String name;

  PreferencesJsonhalAssetRead? preferences;

  final List<NodeJsonhalRead>? path;

  PostalAddressJsonhalRead? address;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceJsonhalRead &&
        other.links == links &&
        other.branchCode == branchCode &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name &&
        other.preferences == preferences &&
        DeepCollectionEquality.unordered().equals(path, other.path) &&
        other.address == address;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (branchCode == null ? 0 : branchCode.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (path == null ? 0 : path.hashCode) +
      (address == null ? 0 : address.hashCode);

  static List<PlaceJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceJsonhalRead>[];
    }

    return json.fold(<PlaceJsonhalRead>[],
        (List<PlaceJsonhalRead> previousValue, element) {
      final PlaceJsonhalRead? object = PlaceJsonhalRead.fromJson(element);
      if (object is PlaceJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceJsonhalRead>{};
    }

    return json.entries.fold(<String, PlaceJsonhalRead>{},
        (Map<String, PlaceJsonhalRead> previousValue, element) {
      final PlaceJsonhalRead? object = PlaceJsonhalRead.fromJson(element.value);
      if (object is PlaceJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceJsonhalRead-objects as value to a dart map
  static Map<String, List<PlaceJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceJsonhalRead>>(
          key, PlaceJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceJsonhalRead[links=$links, branchCode=$branchCode, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name, preferences=$preferences, path=$path, address=$address]';

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
      if (keys == null || keys.contains(r'branchCode'))
        r'branchCode': branchCode,
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
    };
  }
}
