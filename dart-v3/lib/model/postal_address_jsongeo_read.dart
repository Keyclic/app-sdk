//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostalAddressJsongeoRead {
  /// Returns a new [PostalAddressJsongeoRead] instance.
  PostalAddressJsongeoRead({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [PostalAddressJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostalAddressJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostalAddressJsongeoRead(
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

    return other is PostalAddressJsongeoRead &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<PostalAddressJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostalAddressJsongeoRead>[];
    }

    return json.fold(<PostalAddressJsongeoRead>[],
        (List<PostalAddressJsongeoRead> previousValue, element) {
      final PostalAddressJsongeoRead? object =
          PostalAddressJsongeoRead.fromJson(element);
      if (object is PostalAddressJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostalAddressJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostalAddressJsongeoRead>{};
    }

    return json.entries.fold(<String, PostalAddressJsongeoRead>{},
        (Map<String, PostalAddressJsongeoRead> previousValue, element) {
      final PostalAddressJsongeoRead? object =
          PostalAddressJsongeoRead.fromJson(element.value);
      if (object is PostalAddressJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostalAddressJsongeoRead-objects as value to a dart map
  static Map<String, List<PostalAddressJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostalAddressJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostalAddressJsongeoRead>>(
          key, PostalAddressJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PostalAddressJsongeoRead[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
