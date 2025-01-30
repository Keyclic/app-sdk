//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostalAddressWrite {
  /// Returns a new [PostalAddressWrite] instance.
  PostalAddressWrite({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [PostalAddressWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostalAddressWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostalAddressWrite(
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

    return other is PostalAddressWrite &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<PostalAddressWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostalAddressWrite>[];
    }

    return json.fold(<PostalAddressWrite>[],
        (List<PostalAddressWrite> previousValue, element) {
      final PostalAddressWrite? object = PostalAddressWrite.fromJson(element);
      if (object is PostalAddressWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostalAddressWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostalAddressWrite>{};
    }

    return json.entries.fold(<String, PostalAddressWrite>{},
        (Map<String, PostalAddressWrite> previousValue, element) {
      final PostalAddressWrite? object =
          PostalAddressWrite.fromJson(element.value);
      if (object is PostalAddressWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostalAddressWrite-objects as value to a dart map
  static Map<String, List<PostalAddressWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostalAddressWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostalAddressWrite>>(
          key, PostalAddressWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PostalAddressWrite[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
