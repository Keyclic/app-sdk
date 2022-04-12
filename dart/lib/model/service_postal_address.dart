//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ServicePostalAddress {
  /// Returns a new [ServicePostalAddress] instance.
  ServicePostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [ServicePostalAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ServicePostalAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ServicePostalAddress(
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

    return other is ServicePostalAddress &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<ServicePostalAddress> listFromJson(List<dynamic> json) {
    return <ServicePostalAddress>[
      if (json is List)
        for (dynamic value in json) ServicePostalAddress.fromJson(value),
    ];
  }

  static Map<String, ServicePostalAddress> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ServicePostalAddress>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ServicePostalAddress.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ServicePostalAddress-objects as value to a dart map
  static Map<String, List<ServicePostalAddress>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ServicePostalAddress>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ServicePostalAddress.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ServicePostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (locality != null) r'locality': locality,
      if (postalCode != null) r'postalCode': postalCode,
      if (streetAddress != null) r'streetAddress': streetAddress,
    };
  }
}
