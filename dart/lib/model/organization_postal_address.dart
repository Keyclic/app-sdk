//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationPostalAddress {
  /// Returns a new [OrganizationPostalAddress] instance.
  OrganizationPostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [OrganizationPostalAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationPostalAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPostalAddress(
      locality: json[r'locality'],
      postalCode: json[r'postalCode'],
      streetAddress: json[r'streetAddress'],
    );
  }

  String locality;

  String postalCode;

  String streetAddress;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPostalAddress &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<OrganizationPostalAddress> listFromJson(List<dynamic> json) {
    return <OrganizationPostalAddress>[
      if (json is List)
        for (dynamic value in json) OrganizationPostalAddress.fromJson(value),
    ];
  }

  static Map<String, OrganizationPostalAddress> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationPostalAddress>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationPostalAddress.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationPostalAddress-objects as value to a dart map
  static Map<String, List<OrganizationPostalAddress>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationPostalAddress>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationPostalAddress.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationPostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (locality != null) r'locality': locality,
      if (postalCode != null) r'postalCode': postalCode,
      if (streetAddress != null) r'streetAddress': streetAddress,
    };
  }
}
