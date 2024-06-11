//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServicePostalAddress {
  /// Returns a new [ExternalServicePostalAddress] instance.
  ExternalServicePostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [ExternalServicePostalAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServicePostalAddress? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ExternalServicePostalAddress(
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

    return other is ExternalServicePostalAddress &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<ExternalServicePostalAddress> listFromJson(Iterable? json) {
    if (json == null) {
      return <ExternalServicePostalAddress>[];
    }

    return json.fold(<ExternalServicePostalAddress>[],
        (List<ExternalServicePostalAddress> previousValue, element) {
      final ExternalServicePostalAddress? object =
          ExternalServicePostalAddress.fromJson(element);
      if (object is ExternalServicePostalAddress) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServicePostalAddress> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServicePostalAddress>{};
    }

    return json.entries.fold(<String, ExternalServicePostalAddress>{},
        (Map<String, ExternalServicePostalAddress> previousValue, element) {
      final ExternalServicePostalAddress? object =
          ExternalServicePostalAddress.fromJson(element.value);
      if (object is ExternalServicePostalAddress) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServicePostalAddress-objects as value to a dart map
  static Map<String, List<ExternalServicePostalAddress>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServicePostalAddress>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServicePostalAddress>>(
          key, ExternalServicePostalAddress.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalServicePostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
