//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostalAddressWriteEdit {
  /// Returns a new [PostalAddressWriteEdit] instance.
  PostalAddressWriteEdit({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  /// Returns a new [PostalAddressWriteEdit] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostalAddressWriteEdit? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostalAddressWriteEdit(
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

    return other is PostalAddressWriteEdit &&
        other.locality == locality &&
        other.postalCode == postalCode &&
        other.streetAddress == streetAddress;
  }

  @override
  int get hashCode =>
      (locality == null ? 0 : locality.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (streetAddress == null ? 0 : streetAddress.hashCode);

  static List<PostalAddressWriteEdit> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostalAddressWriteEdit>[];
    }

    return json.fold(<PostalAddressWriteEdit>[],
        (List<PostalAddressWriteEdit> previousValue, element) {
      final PostalAddressWriteEdit? object =
          PostalAddressWriteEdit.fromJson(element);
      if (object is PostalAddressWriteEdit) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostalAddressWriteEdit> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostalAddressWriteEdit>{};
    }

    return json.entries.fold(<String, PostalAddressWriteEdit>{},
        (Map<String, PostalAddressWriteEdit> previousValue, element) {
      final PostalAddressWriteEdit? object =
          PostalAddressWriteEdit.fromJson(element.value);
      if (object is PostalAddressWriteEdit) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostalAddressWriteEdit-objects as value to a dart map
  static Map<String, List<PostalAddressWriteEdit>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostalAddressWriteEdit>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostalAddressWriteEdit>>(
          key, PostalAddressWriteEdit.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PostalAddressWriteEdit[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress]';

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
