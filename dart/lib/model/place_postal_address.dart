//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory PlacePostalAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlacePostalAddress(
      locality: json[r'locality'],
      postalCode: json[r'postalCode'],
      streetAddress: json[r'streetAddress'],
    );
  }

  String locality;

  int postalCode;

  String streetAddress;

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

  static List<PlacePostalAddress> listFromJson(List<dynamic> json) {
    return <PlacePostalAddress>[
      if (json is List)
        for (dynamic value in json) PlacePostalAddress.fromJson(value),
    ];
  }

  static Map<String, PlacePostalAddress> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlacePostalAddress>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlacePostalAddress.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlacePostalAddress-objects as value to a dart map
  static Map<String, List<PlacePostalAddress>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlacePostalAddress>>{
      if (json is Map)
        for (final entry in json.entries)
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
