//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostalAddressWriteCreate {
  /// Returns a new [PostalAddressWriteCreate] instance.
  PostalAddressWriteCreate({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [PostalAddressWriteCreate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostalAddressWriteCreate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostalAddressWriteCreate(
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

    return other is PostalAddressWriteCreate &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<PostalAddressWriteCreate> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostalAddressWriteCreate>[];
    }

    return json.fold(<PostalAddressWriteCreate>[],
        (List<PostalAddressWriteCreate> previousValue, element) {
      final PostalAddressWriteCreate? object =
          PostalAddressWriteCreate.fromJson(element);
      if (object is PostalAddressWriteCreate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostalAddressWriteCreate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostalAddressWriteCreate>{};
    }

    return json.entries.fold(<String, PostalAddressWriteCreate>{},
        (Map<String, PostalAddressWriteCreate> previousValue, element) {
      final PostalAddressWriteCreate? object =
          PostalAddressWriteCreate.fromJson(element.value);
      if (object is PostalAddressWriteCreate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostalAddressWriteCreate-objects as value to a dart map
  static Map<String, List<PostalAddressWriteCreate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostalAddressWriteCreate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostalAddressWriteCreate>>(
          key, PostalAddressWriteCreate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PostalAddressWriteCreate[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
