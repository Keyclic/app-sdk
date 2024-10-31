//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetBookmarkCollection200ResponseEmbedded {
  /// Returns a new [GetBookmarkCollection200ResponseEmbedded] instance.
  GetBookmarkCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetBookmarkCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetBookmarkCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetBookmarkCollection200ResponseEmbedded(
      item: BookmarkJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<BookmarkJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetBookmarkCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetBookmarkCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetBookmarkCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetBookmarkCollection200ResponseEmbedded>[],
        (List<GetBookmarkCollection200ResponseEmbedded> previousValue,
            element) {
      final GetBookmarkCollection200ResponseEmbedded? object =
          GetBookmarkCollection200ResponseEmbedded.fromJson(element);
      if (object is GetBookmarkCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetBookmarkCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetBookmarkCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetBookmarkCollection200ResponseEmbedded>{},
        (Map<String, GetBookmarkCollection200ResponseEmbedded> previousValue,
            element) {
      final GetBookmarkCollection200ResponseEmbedded? object =
          GetBookmarkCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetBookmarkCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetBookmarkCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetBookmarkCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetBookmarkCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetBookmarkCollection200ResponseEmbedded>>(
          key, GetBookmarkCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetBookmarkCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
