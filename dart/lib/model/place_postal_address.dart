//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlacePostalAddress {
  /// Returns a new [PlacePostalAddress] instance.
  PlacePostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [PlacePostalAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlacePostalAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlacePostalAddress(
      locality: json[r'locality'],
      postalCode: json[r'postalCode'],
      streetAddress: json[r'streetAddress'],
    );
  }

  String? locality;

  int? postalCode;

  String? streetAddress;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePostalAddress &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<PlacePostalAddress> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlacePostalAddress>[];
    }
    return json
        .map((value) {
          return PlacePostalAddress.fromJson(value);
        })
        .whereType<PlacePostalAddress>()
        .toList();
  }

  static Map<String, PlacePostalAddress> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlacePostalAddress>{};
    }

    final map = json.map((key, value) => MapEntry<String, PlacePostalAddress?>(
        key, PlacePostalAddress.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlacePostalAddress>;
  }

  // maps a json object with a list of PlacePostalAddress-objects as value to a dart map
  static Map<String, List<PlacePostalAddress>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlacePostalAddress>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlacePostalAddress.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlacePostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (locality != null) r'locality': locality,
      if (postalCode != null) r'postalCode': postalCode,
      if (streetAddress != null) r'streetAddress': streetAddress,
    };
  }
}
