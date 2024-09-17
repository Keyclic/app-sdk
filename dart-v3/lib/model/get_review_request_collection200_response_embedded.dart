//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetReviewRequestCollection200ResponseEmbedded {
  /// Returns a new [GetReviewRequestCollection200ResponseEmbedded] instance.
  GetReviewRequestCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetReviewRequestCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetReviewRequestCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetReviewRequestCollection200ResponseEmbedded(
      item: ReviewRequestJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<ReviewRequestJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetReviewRequestCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetReviewRequestCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetReviewRequestCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetReviewRequestCollection200ResponseEmbedded>[],
        (List<GetReviewRequestCollection200ResponseEmbedded> previousValue,
            element) {
      final GetReviewRequestCollection200ResponseEmbedded? object =
          GetReviewRequestCollection200ResponseEmbedded.fromJson(element);
      if (object is GetReviewRequestCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetReviewRequestCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetReviewRequestCollection200ResponseEmbedded>{};
    }

    return json.entries
        .fold(<String, GetReviewRequestCollection200ResponseEmbedded>{},
            (Map<String, GetReviewRequestCollection200ResponseEmbedded>
                    previousValue,
                element) {
      final GetReviewRequestCollection200ResponseEmbedded? object =
          GetReviewRequestCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetReviewRequestCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetReviewRequestCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetReviewRequestCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetReviewRequestCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<GetReviewRequestCollection200ResponseEmbedded>>(key,
          GetReviewRequestCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetReviewRequestCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
