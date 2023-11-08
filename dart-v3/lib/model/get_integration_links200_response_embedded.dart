//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetIntegrationLinks200ResponseEmbedded {
  /// Returns a new [GetIntegrationLinks200ResponseEmbedded] instance.
  GetIntegrationLinks200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetIntegrationLinks200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetIntegrationLinks200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetIntegrationLinks200ResponseEmbedded(
      item: IntegrationLinkJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<IntegrationLinkJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetIntegrationLinks200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetIntegrationLinks200ResponseEmbedded> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <GetIntegrationLinks200ResponseEmbedded>[];
    }

    return json.fold(<GetIntegrationLinks200ResponseEmbedded>[],
        (List<GetIntegrationLinks200ResponseEmbedded> previousValue, element) {
      final GetIntegrationLinks200ResponseEmbedded? object =
          GetIntegrationLinks200ResponseEmbedded.fromJson(element);
      if (object is GetIntegrationLinks200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetIntegrationLinks200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetIntegrationLinks200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetIntegrationLinks200ResponseEmbedded>{},
        (Map<String, GetIntegrationLinks200ResponseEmbedded> previousValue,
            element) {
      final GetIntegrationLinks200ResponseEmbedded? object =
          GetIntegrationLinks200ResponseEmbedded.fromJson(element.value);
      if (object is GetIntegrationLinks200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetIntegrationLinks200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetIntegrationLinks200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetIntegrationLinks200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetIntegrationLinks200ResponseEmbedded>>(
          key, GetIntegrationLinks200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetIntegrationLinks200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
