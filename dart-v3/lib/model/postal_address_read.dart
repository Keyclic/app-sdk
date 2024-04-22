//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostalAddressRead {
  /// Returns a new [PostalAddressRead] instance.
  PostalAddressRead({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [PostalAddressRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostalAddressRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostalAddressRead(
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

    return other is PostalAddressRead &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<PostalAddressRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostalAddressRead>[];
    }

    return json.fold(<PostalAddressRead>[],
        (List<PostalAddressRead> previousValue, element) {
      final PostalAddressRead? object = PostalAddressRead.fromJson(element);
      if (object is PostalAddressRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostalAddressRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostalAddressRead>{};
    }

    return json.entries.fold(<String, PostalAddressRead>{},
        (Map<String, PostalAddressRead> previousValue, element) {
      final PostalAddressRead? object =
          PostalAddressRead.fromJson(element.value);
      if (object is PostalAddressRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostalAddressRead-objects as value to a dart map
  static Map<String, List<PostalAddressRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostalAddressRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostalAddressRead>>(
          key, PostalAddressRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PostalAddressRead[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
