//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetQuoteCollection200ResponseEmbedded {
  /// Returns a new [GetQuoteCollection200ResponseEmbedded] instance.
  GetQuoteCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetQuoteCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetQuoteCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetQuoteCollection200ResponseEmbedded(
      item: QuoteJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<QuoteJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetQuoteCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetQuoteCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetQuoteCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetQuoteCollection200ResponseEmbedded>[],
        (List<GetQuoteCollection200ResponseEmbedded> previousValue, element) {
      final GetQuoteCollection200ResponseEmbedded? object =
          GetQuoteCollection200ResponseEmbedded.fromJson(element);
      if (object is GetQuoteCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetQuoteCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetQuoteCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetQuoteCollection200ResponseEmbedded>{},
        (Map<String, GetQuoteCollection200ResponseEmbedded> previousValue,
            element) {
      final GetQuoteCollection200ResponseEmbedded? object =
          GetQuoteCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetQuoteCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetQuoteCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetQuoteCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetQuoteCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetQuoteCollection200ResponseEmbedded>>(
          key, GetQuoteCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetQuoteCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
