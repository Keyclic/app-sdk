//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetPlaceCollection200ResponseEmbedded {
  /// Returns a new [GetPlaceCollection200ResponseEmbedded] instance.
  GetPlaceCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetPlaceCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetPlaceCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetPlaceCollection200ResponseEmbedded(
      item: PlaceJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<PlaceJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetPlaceCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetPlaceCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetPlaceCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetPlaceCollection200ResponseEmbedded>[],
        (List<GetPlaceCollection200ResponseEmbedded> previousValue, element) {
      final GetPlaceCollection200ResponseEmbedded? object =
          GetPlaceCollection200ResponseEmbedded.fromJson(element);
      if (object is GetPlaceCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetPlaceCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetPlaceCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetPlaceCollection200ResponseEmbedded>{},
        (Map<String, GetPlaceCollection200ResponseEmbedded> previousValue,
            element) {
      final GetPlaceCollection200ResponseEmbedded? object =
          GetPlaceCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetPlaceCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetPlaceCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetPlaceCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetPlaceCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetPlaceCollection200ResponseEmbedded>>(
          key, GetPlaceCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetPlaceCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
