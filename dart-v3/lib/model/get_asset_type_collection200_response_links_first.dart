//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetTypeCollection200ResponseLinksFirst {
  /// Returns a new [GetAssetTypeCollection200ResponseLinksFirst] instance.
  GetAssetTypeCollection200ResponseLinksFirst({
    this.href,
  });

  /// Returns a new [GetAssetTypeCollection200ResponseLinksFirst] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetTypeCollection200ResponseLinksFirst? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssetTypeCollection200ResponseLinksFirst(
      href: json[r'href'],
    );
  }

  String? href;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetAssetTypeCollection200ResponseLinksFirst &&
        other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<GetAssetTypeCollection200ResponseLinksFirst> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetAssetTypeCollection200ResponseLinksFirst>[];
    }

    return json.fold(<GetAssetTypeCollection200ResponseLinksFirst>[],
        (List<GetAssetTypeCollection200ResponseLinksFirst> previousValue,
            element) {
      final GetAssetTypeCollection200ResponseLinksFirst? object =
          GetAssetTypeCollection200ResponseLinksFirst.fromJson(element);
      if (object is GetAssetTypeCollection200ResponseLinksFirst) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetTypeCollection200ResponseLinksFirst> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetTypeCollection200ResponseLinksFirst>{};
    }

    return json.entries.fold(
        <String, GetAssetTypeCollection200ResponseLinksFirst>{},
        (Map<String, GetAssetTypeCollection200ResponseLinksFirst> previousValue,
            element) {
      final GetAssetTypeCollection200ResponseLinksFirst? object =
          GetAssetTypeCollection200ResponseLinksFirst.fromJson(element.value);
      if (object is GetAssetTypeCollection200ResponseLinksFirst) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetTypeCollection200ResponseLinksFirst-objects as value to a dart map
  static Map<String, List<GetAssetTypeCollection200ResponseLinksFirst>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetTypeCollection200ResponseLinksFirst>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<GetAssetTypeCollection200ResponseLinksFirst>>(
          key, GetAssetTypeCollection200ResponseLinksFirst.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetAssetTypeCollection200ResponseLinksFirst[href=$href]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
    };
  }
}
