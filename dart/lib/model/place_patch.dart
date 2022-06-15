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
    return json
        .map((value) {
          return PlacePatch.fromJson(value);
        })
        .whereType<PlacePatch>()
        .toList();
  }

  static Map<String, PlacePatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlacePatch>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlacePatch?>(key, PlacePatch.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlacePatch>;
  }

  // maps a json object with a list of PlacePatch-objects as value to a dart map
  static Map<String, List<PlacePatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlacePatch>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlacePatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlacePatch[address=$address, branchCode=$branchCode, description=$description, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (address != null) r'address': address,
      if (branchCode != null) r'branchCode': branchCode,
      if (description != null) r'description': description,
      if (name != null) r'name': name,
    };
  }
}
