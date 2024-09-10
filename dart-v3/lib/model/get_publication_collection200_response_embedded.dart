//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetPublicationCollection200ResponseEmbedded {
  /// Returns a new [GetPublicationCollection200ResponseEmbedded] instance.
  GetPublicationCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetPublicationCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetPublicationCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetPublicationCollection200ResponseEmbedded(
      item: PublicationJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<PublicationJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetPublicationCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetPublicationCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetPublicationCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetPublicationCollection200ResponseEmbedded>[],
        (List<GetPublicationCollection200ResponseEmbedded> previousValue,
            element) {
      final GetPublicationCollection200ResponseEmbedded? object =
          GetPublicationCollection200ResponseEmbedded.fromJson(element);
      if (object is GetPublicationCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetPublicationCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetPublicationCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetPublicationCollection200ResponseEmbedded>{},
        (Map<String, GetPublicationCollection200ResponseEmbedded> previousValue,
            element) {
      final GetPublicationCollection200ResponseEmbedded? object =
          GetPublicationCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetPublicationCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetPublicationCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetPublicationCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetPublicationCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<GetPublicationCollection200ResponseEmbedded>>(
          key, GetPublicationCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetPublicationCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
