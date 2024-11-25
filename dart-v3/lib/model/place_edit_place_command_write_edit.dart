//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PlaceEditPlaceCommandWriteEdit {
  /// Returns a new [PlaceEditPlaceCommandWriteEdit] instance.
  PlaceEditPlaceCommandWriteEdit({
    this.address,
    this.branchCode,
    this.description,
    this.name,
    this.preferences,
  });

  /// Returns a new [PlaceEditPlaceCommandWriteEdit] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceEditPlaceCommandWriteEdit? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceEditPlaceCommandWriteEdit(
      address: PostalAddressWriteEdit.fromJson(json[r'address']),
      branchCode: json[r'branchCode'],
      description: json[r'description'],
      name: json[r'name'],
      preferences: PreferencesAssetRead.fromJson(json[r'preferences']),
    );
  }

  PostalAddressWriteEdit? address;

  String? branchCode;

  String? description;

  String? name;

  PreferencesAssetRead? preferences;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceEditPlaceCommandWriteEdit &&
        other.address == address &&
        other.branchCode == branchCode &&
        other.description == description &&
        other.name == name &&
        other.preferences == preferences;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (branchCode == null ? 0 : branchCode.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (preferences == null ? 0 : preferences.hashCode);

  static List<PlaceEditPlaceCommandWriteEdit> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceEditPlaceCommandWriteEdit>[];
    }

    return json.fold(<PlaceEditPlaceCommandWriteEdit>[],
        (List<PlaceEditPlaceCommandWriteEdit> previousValue, element) {
      final PlaceEditPlaceCommandWriteEdit? object =
          PlaceEditPlaceCommandWriteEdit.fromJson(element);
      if (object is PlaceEditPlaceCommandWriteEdit) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceEditPlaceCommandWriteEdit> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceEditPlaceCommandWriteEdit>{};
    }

    return json.entries.fold(<String, PlaceEditPlaceCommandWriteEdit>{},
        (Map<String, PlaceEditPlaceCommandWriteEdit> previousValue, element) {
      final PlaceEditPlaceCommandWriteEdit? object =
          PlaceEditPlaceCommandWriteEdit.fromJson(element.value);
      if (object is PlaceEditPlaceCommandWriteEdit) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceEditPlaceCommandWriteEdit-objects as value to a dart map
  static Map<String, List<PlaceEditPlaceCommandWriteEdit>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceEditPlaceCommandWriteEdit>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceEditPlaceCommandWriteEdit>>(
          key, PlaceEditPlaceCommandWriteEdit.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceEditPlaceCommandWriteEdit[address=$address, branchCode=$branchCode, description=$description, name=$name, preferences=$preferences]';

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
      if (keys == null || keys.contains(r'branchCode'))
        r'branchCode': branchCode,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null ||
          keys.any((key) => RegExp(r'^preferences\.').hasMatch(key)))
        r'preferences': preferences?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^preferences\.'))) {
            previousValue.add(element.split(RegExp(r'^preferences\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
