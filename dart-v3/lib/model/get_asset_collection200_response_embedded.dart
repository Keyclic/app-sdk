//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetCollection200ResponseEmbedded {
  /// Returns a new [GetAssetCollection200ResponseEmbedded] instance.
  GetAssetCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetAssetCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetCollection200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssetCollection200ResponseEmbedded(
      item: AssetJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<AssetJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetAssetCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetAssetCollection200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetAssetCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetAssetCollection200ResponseEmbedded>[],
        (List<GetAssetCollection200ResponseEmbedded> previousValue, element) {
      final GetAssetCollection200ResponseEmbedded? object =
          GetAssetCollection200ResponseEmbedded.fromJson(element);
      if (object is GetAssetCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetAssetCollection200ResponseEmbedded>{},
        (Map<String, GetAssetCollection200ResponseEmbedded> previousValue,
            element) {
      final GetAssetCollection200ResponseEmbedded? object =
          GetAssetCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetAssetCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetAssetCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssetCollection200ResponseEmbedded>>(
          key, GetAssetCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetAssetCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
