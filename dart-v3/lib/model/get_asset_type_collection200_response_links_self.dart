//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetTypeCollection200ResponseLinksSelf {
  /// Returns a new [GetAssetTypeCollection200ResponseLinksSelf] instance.
  GetAssetTypeCollection200ResponseLinksSelf({
    this.href,
  });

  /// Returns a new [GetAssetTypeCollection200ResponseLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetTypeCollection200ResponseLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetAssetTypeCollection200ResponseLinksSelf(
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

    return other is GetAssetTypeCollection200ResponseLinksSelf &&
        other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<GetAssetTypeCollection200ResponseLinksSelf> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetAssetTypeCollection200ResponseLinksSelf>[];
    }

    return json.fold(<GetAssetTypeCollection200ResponseLinksSelf>[],
        (List<GetAssetTypeCollection200ResponseLinksSelf> previousValue,
            element) {
      final GetAssetTypeCollection200ResponseLinksSelf? object =
          GetAssetTypeCollection200ResponseLinksSelf.fromJson(element);
      if (object is GetAssetTypeCollection200ResponseLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetTypeCollection200ResponseLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetTypeCollection200ResponseLinksSelf>{};
    }

    return json.entries.fold(
        <String, GetAssetTypeCollection200ResponseLinksSelf>{},
        (Map<String, GetAssetTypeCollection200ResponseLinksSelf> previousValue,
            element) {
      final GetAssetTypeCollection200ResponseLinksSelf? object =
          GetAssetTypeCollection200ResponseLinksSelf.fromJson(element.value);
      if (object is GetAssetTypeCollection200ResponseLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetTypeCollection200ResponseLinksSelf-objects as value to a dart map
  static Map<String, List<GetAssetTypeCollection200ResponseLinksSelf>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetTypeCollection200ResponseLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssetTypeCollection200ResponseLinksSelf>>(
          key, GetAssetTypeCollection200ResponseLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetAssetTypeCollection200ResponseLinksSelf[href=$href]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
    };
  }
}
