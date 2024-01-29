//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetIntegrationCollection200ResponseEmbedded {
  /// Returns a new [GetIntegrationCollection200ResponseEmbedded] instance.
  GetIntegrationCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetIntegrationCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetIntegrationCollection200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetIntegrationCollection200ResponseEmbedded(
      item: IntegrationJsonhalIntegrationRead.listFromJson(json[r'item']),
    );
  }

  List<IntegrationJsonhalIntegrationRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetIntegrationCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetIntegrationCollection200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetIntegrationCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetIntegrationCollection200ResponseEmbedded>[],
        (List<GetIntegrationCollection200ResponseEmbedded> previousValue,
            element) {
      final GetIntegrationCollection200ResponseEmbedded? object =
          GetIntegrationCollection200ResponseEmbedded.fromJson(element);
      if (object is GetIntegrationCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetIntegrationCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetIntegrationCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetIntegrationCollection200ResponseEmbedded>{},
        (Map<String, GetIntegrationCollection200ResponseEmbedded> previousValue,
            element) {
      final GetIntegrationCollection200ResponseEmbedded? object =
          GetIntegrationCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetIntegrationCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetIntegrationCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetIntegrationCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetIntegrationCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<GetIntegrationCollection200ResponseEmbedded>>(
          key, GetIntegrationCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetIntegrationCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
