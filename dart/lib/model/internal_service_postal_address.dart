//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServicePostalAddress {
  /// Returns a new [InternalServicePostalAddress] instance.
  InternalServicePostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [InternalServicePostalAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServicePostalAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServicePostalAddress(
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

    return other is InternalServicePostalAddress &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<InternalServicePostalAddress> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InternalServicePostalAddress>[];
    }
    return json
        .map((value) {
          return InternalServicePostalAddress.fromJson(value);
        })
        .whereType<InternalServicePostalAddress>()
        .toList();
  }

  static Map<String, InternalServicePostalAddress> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServicePostalAddress>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InternalServicePostalAddress?>(
            key, InternalServicePostalAddress.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InternalServicePostalAddress>;
  }

  // maps a json object with a list of InternalServicePostalAddress-objects as value to a dart map
  static Map<String, List<InternalServicePostalAddress>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<InternalServicePostalAddress>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InternalServicePostalAddress.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServicePostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (locality != null) r'locality': locality,
      if (postalCode != null) r'postalCode': postalCode,
      if (streetAddress != null) r'streetAddress': streetAddress,
    };
  }
}
