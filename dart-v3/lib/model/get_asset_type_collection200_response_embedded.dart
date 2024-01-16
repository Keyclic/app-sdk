//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetTypeCollection200ResponseEmbedded {
  /// Returns a new [GetAssetTypeCollection200ResponseEmbedded] instance.
  GetAssetTypeCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetAssetTypeCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetTypeCollection200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssetTypeCollection200ResponseEmbedded(
      item: AssetTypeJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<AssetTypeJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetAssetTypeCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetAssetTypeCollection200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetAssetTypeCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetAssetTypeCollection200ResponseEmbedded>[],
        (List<GetAssetTypeCollection200ResponseEmbedded> previousValue,
            element) {
      final GetAssetTypeCollection200ResponseEmbedded? object =
          GetAssetTypeCollection200ResponseEmbedded.fromJson(element);
      if (object is GetAssetTypeCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetTypeCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetTypeCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetAssetTypeCollection200ResponseEmbedded>{},
        (Map<String, GetAssetTypeCollection200ResponseEmbedded> previousValue,
            element) {
      final GetAssetTypeCollection200ResponseEmbedded? object =
          GetAssetTypeCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetAssetTypeCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetTypeCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetAssetTypeCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetTypeCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssetTypeCollection200ResponseEmbedded>>(
          key, GetAssetTypeCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetAssetTypeCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
