//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetIntegrations200ResponseEmbedded {
  /// Returns a new [GetIntegrations200ResponseEmbedded] instance.
  GetIntegrations200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetIntegrations200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetIntegrations200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetIntegrations200ResponseEmbedded(
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

    return other is GetIntegrations200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetIntegrations200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetIntegrations200ResponseEmbedded>[];
    }

    return json.fold(<GetIntegrations200ResponseEmbedded>[],
        (List<GetIntegrations200ResponseEmbedded> previousValue, element) {
      final GetIntegrations200ResponseEmbedded? object =
          GetIntegrations200ResponseEmbedded.fromJson(element);
      if (object is GetIntegrations200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetIntegrations200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetIntegrations200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetIntegrations200ResponseEmbedded>{},
        (Map<String, GetIntegrations200ResponseEmbedded> previousValue,
            element) {
      final GetIntegrations200ResponseEmbedded? object =
          GetIntegrations200ResponseEmbedded.fromJson(element.value);
      if (object is GetIntegrations200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetIntegrations200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetIntegrations200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetIntegrations200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetIntegrations200ResponseEmbedded>>(
          key, GetIntegrations200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetIntegrations200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
