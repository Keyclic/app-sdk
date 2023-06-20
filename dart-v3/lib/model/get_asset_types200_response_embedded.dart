//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetTypes200ResponseEmbedded {
  /// Returns a new [GetAssetTypes200ResponseEmbedded] instance.
  GetAssetTypes200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetAssetTypes200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetTypes200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssetTypes200ResponseEmbedded(
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

    return other is GetAssetTypes200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetAssetTypes200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetAssetTypes200ResponseEmbedded>[];
    }

    return json.fold(<GetAssetTypes200ResponseEmbedded>[],
        (List<GetAssetTypes200ResponseEmbedded> previousValue, element) {
      final GetAssetTypes200ResponseEmbedded? object =
          GetAssetTypes200ResponseEmbedded.fromJson(element);
      if (object is GetAssetTypes200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetTypes200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetTypes200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetAssetTypes200ResponseEmbedded>{},
        (Map<String, GetAssetTypes200ResponseEmbedded> previousValue, element) {
      final GetAssetTypes200ResponseEmbedded? object =
          GetAssetTypes200ResponseEmbedded.fromJson(element.value);
      if (object is GetAssetTypes200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetTypes200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetAssetTypes200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetTypes200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssetTypes200ResponseEmbedded>>(
          key, GetAssetTypes200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetAssetTypes200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
