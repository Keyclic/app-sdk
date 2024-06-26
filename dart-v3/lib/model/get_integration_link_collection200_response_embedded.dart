//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetIntegrationLinkCollection200ResponseEmbedded {
  /// Returns a new [GetIntegrationLinkCollection200ResponseEmbedded] instance.
  GetIntegrationLinkCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetIntegrationLinkCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetIntegrationLinkCollection200ResponseEmbedded? fromJson(
      Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetIntegrationLinkCollection200ResponseEmbedded(
      item: IntegrationLinkJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<IntegrationLinkJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetIntegrationLinkCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetIntegrationLinkCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetIntegrationLinkCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetIntegrationLinkCollection200ResponseEmbedded>[],
        (List<GetIntegrationLinkCollection200ResponseEmbedded> previousValue,
            element) {
      final GetIntegrationLinkCollection200ResponseEmbedded? object =
          GetIntegrationLinkCollection200ResponseEmbedded.fromJson(element);
      if (object is GetIntegrationLinkCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetIntegrationLinkCollection200ResponseEmbedded>
      mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetIntegrationLinkCollection200ResponseEmbedded>{};
    }

    return json.entries
        .fold(<String, GetIntegrationLinkCollection200ResponseEmbedded>{},
            (Map<String, GetIntegrationLinkCollection200ResponseEmbedded>
                    previousValue,
                element) {
      final GetIntegrationLinkCollection200ResponseEmbedded? object =
          GetIntegrationLinkCollection200ResponseEmbedded.fromJson(
              element.value);
      if (object is GetIntegrationLinkCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetIntegrationLinkCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetIntegrationLinkCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetIntegrationLinkCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<GetIntegrationLinkCollection200ResponseEmbedded>>(key,
          GetIntegrationLinkCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetIntegrationLinkCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
