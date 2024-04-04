//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static InternalServiceDataAddress? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return InternalServiceDataAddress(
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

  static List<InternalServiceDataAddress> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceDataAddress>[];
    }

    return json.fold(<InternalServiceDataAddress>[],
        (List<InternalServiceDataAddress> previousValue, element) {
      final InternalServiceDataAddress? object =
          InternalServiceDataAddress.fromJson(element);
      if (object is InternalServiceDataAddress) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceDataAddress> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceDataAddress>{};
    }

    return json.entries.fold(<String, InternalServiceDataAddress>{},
        (Map<String, InternalServiceDataAddress> previousValue, element) {
      final InternalServiceDataAddress? object =
          InternalServiceDataAddress.fromJson(element.value);
      if (object is InternalServiceDataAddress) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceDataAddress-objects as value to a dart map
  static Map<String, List<InternalServiceDataAddress>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceDataAddress>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceDataAddress>>(
          key, InternalServiceDataAddress.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InternalServiceDataAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
