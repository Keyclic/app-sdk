//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetCategoryCollection200ResponseEmbedded {
  /// Returns a new [GetCategoryCollection200ResponseEmbedded] instance.
  GetCategoryCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetCategoryCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetCategoryCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetCategoryCollection200ResponseEmbedded(
      item: CategoryJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<CategoryJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetCategoryCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetCategoryCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetCategoryCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetCategoryCollection200ResponseEmbedded>[],
        (List<GetCategoryCollection200ResponseEmbedded> previousValue,
            element) {
      final GetCategoryCollection200ResponseEmbedded? object =
          GetCategoryCollection200ResponseEmbedded.fromJson(element);
      if (object is GetCategoryCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetCategoryCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetCategoryCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetCategoryCollection200ResponseEmbedded>{},
        (Map<String, GetCategoryCollection200ResponseEmbedded> previousValue,
            element) {
      final GetCategoryCollection200ResponseEmbedded? object =
          GetCategoryCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetCategoryCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetCategoryCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetCategoryCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetCategoryCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetCategoryCollection200ResponseEmbedded>>(
          key, GetCategoryCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetCategoryCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
