//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static ServicePostalAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServicePostalAddress(
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

  static List<ServicePostalAddress> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ServicePostalAddress>[];
    }

    return json.fold(<ServicePostalAddress>[],
        (List<ServicePostalAddress> previousValue, element) {
      final ServicePostalAddress? object =
          ServicePostalAddress.fromJson(element);
      if (object is ServicePostalAddress) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServicePostalAddress> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServicePostalAddress>{};
    }

    return json.entries.fold(<String, ServicePostalAddress>{},
        (Map<String, ServicePostalAddress> previousValue, element) {
      final ServicePostalAddress? object =
          ServicePostalAddress.fromJson(element.value);
      if (object is ServicePostalAddress) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServicePostalAddress-objects as value to a dart map
  static Map<String, List<ServicePostalAddress>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServicePostalAddress>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServicePostalAddress>>(
          key, ServicePostalAddress.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ServicePostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
