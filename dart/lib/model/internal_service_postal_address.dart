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
  static InternalServicePostalAddress? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return InternalServicePostalAddress(
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

  static List<InternalServicePostalAddress> listFromJson(Iterable? json) {
    if (json == null) {
      return <InternalServicePostalAddress>[];
    }

    return json.fold(<InternalServicePostalAddress>[],
        (List<InternalServicePostalAddress> previousValue, element) {
      final InternalServicePostalAddress? object =
          InternalServicePostalAddress.fromJson(element);
      if (object is InternalServicePostalAddress) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServicePostalAddress> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServicePostalAddress>{};
    }

    return json.entries.fold(<String, InternalServicePostalAddress>{},
        (Map<String, InternalServicePostalAddress> previousValue, element) {
      final InternalServicePostalAddress? object =
          InternalServicePostalAddress.fromJson(element.value);
      if (object is InternalServicePostalAddress) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServicePostalAddress-objects as value to a dart map
  static Map<String, List<InternalServicePostalAddress>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServicePostalAddress>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServicePostalAddress>>(
          key, InternalServicePostalAddress.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InternalServicePostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'locality')) r'locality': locality,
      if (keys == null || keys.contains(r'postalCode'))
        r'postalCode': postalCode,
      if (keys == null || keys.contains(r'streetAddress'))
        r'streetAddress': streetAddress,
    };
  }
}
