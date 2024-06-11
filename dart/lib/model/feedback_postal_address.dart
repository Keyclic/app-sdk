//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackPostalAddress {
  /// Returns a new [FeedbackPostalAddress] instance.
  FeedbackPostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [FeedbackPostalAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackPostalAddress? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackPostalAddress(
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

    return other is FeedbackPostalAddress &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<FeedbackPostalAddress> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackPostalAddress>[];
    }

    return json.fold(<FeedbackPostalAddress>[],
        (List<FeedbackPostalAddress> previousValue, element) {
      final FeedbackPostalAddress? object =
          FeedbackPostalAddress.fromJson(element);
      if (object is FeedbackPostalAddress) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackPostalAddress> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackPostalAddress>{};
    }

    return json.entries.fold(<String, FeedbackPostalAddress>{},
        (Map<String, FeedbackPostalAddress> previousValue, element) {
      final FeedbackPostalAddress? object =
          FeedbackPostalAddress.fromJson(element.value);
      if (object is FeedbackPostalAddress) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackPostalAddress-objects as value to a dart map
  static Map<String, List<FeedbackPostalAddress>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackPostalAddress>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackPostalAddress>>(
          key, FeedbackPostalAddress.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackPostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
