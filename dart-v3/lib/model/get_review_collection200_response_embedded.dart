//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetReviewCollection200ResponseEmbedded {
  /// Returns a new [GetReviewCollection200ResponseEmbedded] instance.
  GetReviewCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetReviewCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetReviewCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetReviewCollection200ResponseEmbedded(
      item: ReviewJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<ReviewJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetReviewCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetReviewCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetReviewCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetReviewCollection200ResponseEmbedded>[],
        (List<GetReviewCollection200ResponseEmbedded> previousValue, element) {
      final GetReviewCollection200ResponseEmbedded? object =
          GetReviewCollection200ResponseEmbedded.fromJson(element);
      if (object is GetReviewCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetReviewCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetReviewCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetReviewCollection200ResponseEmbedded>{},
        (Map<String, GetReviewCollection200ResponseEmbedded> previousValue,
            element) {
      final GetReviewCollection200ResponseEmbedded? object =
          GetReviewCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetReviewCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetReviewCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetReviewCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetReviewCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetReviewCollection200ResponseEmbedded>>(
          key, GetReviewCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetReviewCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
