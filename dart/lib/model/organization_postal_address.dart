//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static OrganizationPostalAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationPostalAddress(
      locality: json[r'locality'],
      postalCode: json[r'postalCode'],
      streetAddress: json[r'streetAddress'],
    );
  }

  String? locality;

  String? postalCode;

  String? streetAddress;

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

  static List<OrganizationPostalAddress> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationPostalAddress>[];
    }

    return json.fold(<OrganizationPostalAddress>[],
        (List<OrganizationPostalAddress> previousValue, element) {
      final OrganizationPostalAddress? object =
          OrganizationPostalAddress.fromJson(element);
      if (object is OrganizationPostalAddress) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationPostalAddress> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationPostalAddress>{};
    }

    return json.entries.fold(<String, OrganizationPostalAddress>{},
        (Map<String, OrganizationPostalAddress> previousValue, element) {
      final OrganizationPostalAddress? object =
          OrganizationPostalAddress.fromJson(element.value);
      if (object is OrganizationPostalAddress) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationPostalAddress-objects as value to a dart map
  static Map<String, List<OrganizationPostalAddress>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationPostalAddress>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationPostalAddress>>(
          key, OrganizationPostalAddress.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationPostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && locality != null) ||
          (keys?.contains(r'locality') ?? false))
        r'locality': locality,
      if ((keys == null && postalCode != null) ||
          (keys?.contains(r'postalCode') ?? false))
        r'postalCode': postalCode,
      if ((keys == null && streetAddress != null) ||
          (keys?.contains(r'streetAddress') ?? false))
        r'streetAddress': streetAddress,
    };
  }
}
