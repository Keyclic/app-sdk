//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssets200ResponseEmbedded {
  /// Returns a new [GetAssets200ResponseEmbedded] instance.
  GetAssets200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetAssets200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssets200ResponseEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssets200ResponseEmbedded(
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

    return other is GetAssets200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetAssets200ResponseEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetAssets200ResponseEmbedded>[];
    }

    return json.fold(<GetAssets200ResponseEmbedded>[],
        (List<GetAssets200ResponseEmbedded> previousValue, element) {
      final GetAssets200ResponseEmbedded? object =
          GetAssets200ResponseEmbedded.fromJson(element);
      if (object is GetAssets200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssets200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssets200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetAssets200ResponseEmbedded>{},
        (Map<String, GetAssets200ResponseEmbedded> previousValue, element) {
      final GetAssets200ResponseEmbedded? object =
          GetAssets200ResponseEmbedded.fromJson(element.value);
      if (object is GetAssets200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssets200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetAssets200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssets200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssets200ResponseEmbedded>>(
          key, GetAssets200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetAssets200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
