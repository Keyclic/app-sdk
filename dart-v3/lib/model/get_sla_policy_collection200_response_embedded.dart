//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetSlaPolicyCollection200ResponseEmbedded {
  /// Returns a new [GetSlaPolicyCollection200ResponseEmbedded] instance.
  GetSlaPolicyCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetSlaPolicyCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetSlaPolicyCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetSlaPolicyCollection200ResponseEmbedded(
      item: SlaPolicyJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<SlaPolicyJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetSlaPolicyCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetSlaPolicyCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetSlaPolicyCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetSlaPolicyCollection200ResponseEmbedded>[],
        (List<GetSlaPolicyCollection200ResponseEmbedded> previousValue,
            element) {
      final GetSlaPolicyCollection200ResponseEmbedded? object =
          GetSlaPolicyCollection200ResponseEmbedded.fromJson(element);
      if (object is GetSlaPolicyCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetSlaPolicyCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetSlaPolicyCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetSlaPolicyCollection200ResponseEmbedded>{},
        (Map<String, GetSlaPolicyCollection200ResponseEmbedded> previousValue,
            element) {
      final GetSlaPolicyCollection200ResponseEmbedded? object =
          GetSlaPolicyCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetSlaPolicyCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetSlaPolicyCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetSlaPolicyCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetSlaPolicyCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetSlaPolicyCollection200ResponseEmbedded>>(
          key, GetSlaPolicyCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetSlaPolicyCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
