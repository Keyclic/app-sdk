//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetBrandCollection200ResponseEmbedded {
  /// Returns a new [GetBrandCollection200ResponseEmbedded] instance.
  GetBrandCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetBrandCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetBrandCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetBrandCollection200ResponseEmbedded(
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

    return other is GetBrandCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetBrandCollection200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetBrandCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetBrandCollection200ResponseEmbedded>[],
        (List<GetBrandCollection200ResponseEmbedded> previousValue, element) {
      final GetBrandCollection200ResponseEmbedded? object =
          GetBrandCollection200ResponseEmbedded.fromJson(element);
      if (object is GetBrandCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetBrandCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetBrandCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetBrandCollection200ResponseEmbedded>{},
        (Map<String, GetBrandCollection200ResponseEmbedded> previousValue,
            element) {
      final GetBrandCollection200ResponseEmbedded? object =
          GetBrandCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetBrandCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetBrandCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetBrandCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetBrandCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetBrandCollection200ResponseEmbedded>>(
          key, GetBrandCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetBrandCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
