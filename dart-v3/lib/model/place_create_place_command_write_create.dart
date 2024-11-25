//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PlaceCreatePlaceCommandWriteCreate {
  /// Returns a new [PlaceCreatePlaceCommandWriteCreate] instance.
  PlaceCreatePlaceCommandWriteCreate({
    this.address,
    this.description,
    required this.name,
    required this.organization,
    this.parent,
    this.preferences,
    this.state,
  });

  /// Returns a new [PlaceCreatePlaceCommandWriteCreate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceCreatePlaceCommandWriteCreate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceCreatePlaceCommandWriteCreate(
      address: PostalAddressWriteCreate.fromJson(json[r'address']),
      description: json[r'description'],
      name: json[r'name'],
      organization: json[r'organization'],
      parent: json[r'parent'],
      preferences: PreferencesAssetRead.fromJson(json[r'preferences']),
      state: json[r'state'],
    );
  }

  PostalAddressWriteCreate? address;

  String? description;

  String name;

  String organization;

  String? parent;

  PreferencesAssetRead? preferences;

  String? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceCreatePlaceCommandWriteCreate &&
        other.address == address &&
        other.description == description &&
        other.name == name &&
        other.organization == organization &&
        other.parent == parent &&
        other.preferences == preferences &&
        other.state == state;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      organization.hashCode +
      (parent == null ? 0 : parent.hashCode) +
      (preferences == null ? 0 : preferences.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<PlaceCreatePlaceCommandWriteCreate> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceCreatePlaceCommandWriteCreate>[];
    }

    return json.fold(<PlaceCreatePlaceCommandWriteCreate>[],
        (List<PlaceCreatePlaceCommandWriteCreate> previousValue, element) {
      final PlaceCreatePlaceCommandWriteCreate? object =
          PlaceCreatePlaceCommandWriteCreate.fromJson(element);
      if (object is PlaceCreatePlaceCommandWriteCreate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceCreatePlaceCommandWriteCreate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceCreatePlaceCommandWriteCreate>{};
    }

    return json.entries.fold(<String, PlaceCreatePlaceCommandWriteCreate>{},
        (Map<String, PlaceCreatePlaceCommandWriteCreate> previousValue,
            element) {
      final PlaceCreatePlaceCommandWriteCreate? object =
          PlaceCreatePlaceCommandWriteCreate.fromJson(element.value);
      if (object is PlaceCreatePlaceCommandWriteCreate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceCreatePlaceCommandWriteCreate-objects as value to a dart map
  static Map<String, List<PlaceCreatePlaceCommandWriteCreate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceCreatePlaceCommandWriteCreate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceCreatePlaceCommandWriteCreate>>(
          key, PlaceCreatePlaceCommandWriteCreate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceCreatePlaceCommandWriteCreate[address=$address, description=$description, name=$name, organization=$organization, parent=$parent, preferences=$preferences, state=$state]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
      r'organization': organization,
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
      if (keys == null ||
          keys.any((key) => RegExp(r'^preferences\.').hasMatch(key)))
        r'preferences': preferences?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^preferences\.'))) {
            previousValue.add(element.split(RegExp(r'^preferences\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'state')) r'state': state,
    };
  }
}
