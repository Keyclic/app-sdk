//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServicePatchAddress {
  /// Returns a new [ExternalServicePatchAddress] instance.
  ExternalServicePatchAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [ExternalServicePatchAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServicePatchAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServicePatchAddress(
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

    return other is ExternalServicePatchAddress &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<ExternalServicePatchAddress> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ExternalServicePatchAddress>[];
    }

    return json.fold(<ExternalServicePatchAddress>[],
        (List<ExternalServicePatchAddress> previousValue, element) {
      final ExternalServicePatchAddress? object =
          ExternalServicePatchAddress.fromJson(element);
      if (object is ExternalServicePatchAddress) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServicePatchAddress> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServicePatchAddress>{};
    }

    return json.entries.fold(<String, ExternalServicePatchAddress>{},
        (Map<String, ExternalServicePatchAddress> previousValue, element) {
      final ExternalServicePatchAddress? object =
          ExternalServicePatchAddress.fromJson(element.value);
      if (object is ExternalServicePatchAddress) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServicePatchAddress-objects as value to a dart map
  static Map<String, List<ExternalServicePatchAddress>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServicePatchAddress>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServicePatchAddress>>(
          key, ExternalServicePatchAddress.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalServicePatchAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (locality != null) r'locality': locality,
      if (postalCode != null) r'postalCode': postalCode,
      if (streetAddress != null) r'streetAddress': streetAddress,
    };
  }
}
