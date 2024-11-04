//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PlaceCreatePlaceCommandWrite {
  /// Returns a new [PlaceCreatePlaceCommandWrite] instance.
  PlaceCreatePlaceCommandWrite({
    this.address,
    this.description,
    required this.name,
    required this.organization,
    this.parent,
    this.preferences,
    this.state,
  });

  /// Returns a new [PlaceCreatePlaceCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceCreatePlaceCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceCreatePlaceCommandWrite(
      address: PostalAddressWrite.fromJson(json[r'address']),
      description: json[r'description'],
      name: json[r'name'],
      organization: json[r'organization'],
      parent: json[r'parent'],
      preferences: PreferencesAssetRead.fromJson(json[r'preferences']),
      state: json[r'state'],
    );
  }

  PostalAddressWrite? address;

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

    return other is PlaceCreatePlaceCommandWrite &&
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

  static List<PlaceCreatePlaceCommandWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceCreatePlaceCommandWrite>[];
    }

    return json.fold(<PlaceCreatePlaceCommandWrite>[],
        (List<PlaceCreatePlaceCommandWrite> previousValue, element) {
      final PlaceCreatePlaceCommandWrite? object =
          PlaceCreatePlaceCommandWrite.fromJson(element);
      if (object is PlaceCreatePlaceCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceCreatePlaceCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceCreatePlaceCommandWrite>{};
    }

    return json.entries.fold(<String, PlaceCreatePlaceCommandWrite>{},
        (Map<String, PlaceCreatePlaceCommandWrite> previousValue, element) {
      final PlaceCreatePlaceCommandWrite? object =
          PlaceCreatePlaceCommandWrite.fromJson(element.value);
      if (object is PlaceCreatePlaceCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceCreatePlaceCommandWrite-objects as value to a dart map
  static Map<String, List<PlaceCreatePlaceCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceCreatePlaceCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceCreatePlaceCommandWrite>>(
          key, PlaceCreatePlaceCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceCreatePlaceCommandWrite[address=$address, description=$description, name=$name, organization=$organization, parent=$parent, preferences=$preferences, state=$state]';

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
