//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetOccupantCollection200ResponseEmbedded {
  /// Returns a new [GetOccupantCollection200ResponseEmbedded] instance.
  GetOccupantCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetOccupantCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetOccupantCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetOccupantCollection200ResponseEmbedded(
      item: OccupantJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<OccupantJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetOccupantCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetOccupantCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetOccupantCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetOccupantCollection200ResponseEmbedded>[],
        (List<GetOccupantCollection200ResponseEmbedded> previousValue,
            element) {
      final GetOccupantCollection200ResponseEmbedded? object =
          GetOccupantCollection200ResponseEmbedded.fromJson(element);
      if (object is GetOccupantCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetOccupantCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetOccupantCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetOccupantCollection200ResponseEmbedded>{},
        (Map<String, GetOccupantCollection200ResponseEmbedded> previousValue,
            element) {
      final GetOccupantCollection200ResponseEmbedded? object =
          GetOccupantCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetOccupantCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetOccupantCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetOccupantCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetOccupantCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetOccupantCollection200ResponseEmbedded>>(
          key, GetOccupantCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetOccupantCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
