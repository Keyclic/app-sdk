//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlacePatch {
  /// Returns a new [PlacePatch] instance.
  PlacePatch({
    this.address,
    this.branchCode,
    this.description,
    this.name,
  });

  /// Returns a new [PlacePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlacePatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlacePatch(
      address: ExternalServicePatchAddress.fromJson(json[r'address']),
      branchCode: json[r'branchCode'],
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  ExternalServicePatchAddress? address;

  String? branchCode;

  String? description;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePatch &&
        other.address == address &&
        other.branchCode == branchCode &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (branchCode == null ? 0 : branchCode.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<PlacePatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlacePatch>[];
    }

    return json.fold(<PlacePatch>[], (List<PlacePatch> previousValue, element) {
      final PlacePatch? object = PlacePatch.fromJson(element);
      if (object is PlacePatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlacePatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlacePatch>{};
    }

    return json.entries.fold(<String, PlacePatch>{},
        (Map<String, PlacePatch> previousValue, element) {
      final PlacePatch? object = PlacePatch.fromJson(element.value);
      if (object is PlacePatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlacePatch-objects as value to a dart map
  static Map<String, List<PlacePatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlacePatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlacePatch>>(
          key, PlacePatch.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlacePatch[address=$address, branchCode=$branchCode, description=$description, name=$name]';

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
    };
  }
}
