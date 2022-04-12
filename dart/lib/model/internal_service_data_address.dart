//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServiceDataAddress {
  /// Returns a new [InternalServiceDataAddress] instance.
  InternalServiceDataAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [InternalServiceDataAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServiceDataAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceDataAddress(
      locality: json[r'locality'],
      postalCode:
          json[r'postalCode'] == null ? null : json[r'postalCode'].toDouble(),
      streetAddress: json[r'streetAddress'],
    );
  }

  String locality;

  num postalCode;

  String streetAddress;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceDataAddress &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<InternalServiceDataAddress> listFromJson(List<dynamic> json) {
    return <InternalServiceDataAddress>[
      if (json is List)
        for (dynamic value in json) InternalServiceDataAddress.fromJson(value),
    ];
  }

  static Map<String, InternalServiceDataAddress> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServiceDataAddress>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceDataAddress.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServiceDataAddress-objects as value to a dart map
  static Map<String, List<InternalServiceDataAddress>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServiceDataAddress>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceDataAddress.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceDataAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (locality != null) r'locality': locality,
      if (postalCode != null) r'postalCode': postalCode,
      if (streetAddress != null) r'streetAddress': streetAddress,
    };
  }
}
