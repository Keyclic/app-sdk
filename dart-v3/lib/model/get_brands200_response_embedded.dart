//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetBrands200ResponseEmbedded {
  /// Returns a new [GetBrands200ResponseEmbedded] instance.
  GetBrands200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetBrands200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetBrands200ResponseEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetBrands200ResponseEmbedded(
      item: BrandJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<BrandJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetBrands200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetBrands200ResponseEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetBrands200ResponseEmbedded>[];
    }

    return json.fold(<GetBrands200ResponseEmbedded>[],
        (List<GetBrands200ResponseEmbedded> previousValue, element) {
      final GetBrands200ResponseEmbedded? object =
          GetBrands200ResponseEmbedded.fromJson(element);
      if (object is GetBrands200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetBrands200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetBrands200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetBrands200ResponseEmbedded>{},
        (Map<String, GetBrands200ResponseEmbedded> previousValue, element) {
      final GetBrands200ResponseEmbedded? object =
          GetBrands200ResponseEmbedded.fromJson(element.value);
      if (object is GetBrands200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetBrands200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetBrands200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetBrands200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetBrands200ResponseEmbedded>>(
          key, GetBrands200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetBrands200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
