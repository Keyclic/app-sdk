//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostalAddressJsonhalRead {
  /// Returns a new [PostalAddressJsonhalRead] instance.
  PostalAddressJsonhalRead({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [PostalAddressJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostalAddressJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostalAddressJsonhalRead(
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

    return other is PostalAddressJsonhalRead &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<PostalAddressJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostalAddressJsonhalRead>[];
    }

    return json.fold(<PostalAddressJsonhalRead>[],
        (List<PostalAddressJsonhalRead> previousValue, element) {
      final PostalAddressJsonhalRead? object =
          PostalAddressJsonhalRead.fromJson(element);
      if (object is PostalAddressJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostalAddressJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostalAddressJsonhalRead>{};
    }

    return json.entries.fold(<String, PostalAddressJsonhalRead>{},
        (Map<String, PostalAddressJsonhalRead> previousValue, element) {
      final PostalAddressJsonhalRead? object =
          PostalAddressJsonhalRead.fromJson(element.value);
      if (object is PostalAddressJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostalAddressJsonhalRead-objects as value to a dart map
  static Map<String, List<PostalAddressJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostalAddressJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostalAddressJsonhalRead>>(
          key, PostalAddressJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PostalAddressJsonhalRead[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
