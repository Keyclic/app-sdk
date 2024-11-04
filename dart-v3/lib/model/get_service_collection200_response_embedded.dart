//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetServiceCollection200ResponseEmbedded {
  /// Returns a new [GetServiceCollection200ResponseEmbedded] instance.
  GetServiceCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetServiceCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetServiceCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetServiceCollection200ResponseEmbedded(
      item: ServiceJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<ServiceJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetServiceCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetServiceCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetServiceCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetServiceCollection200ResponseEmbedded>[],
        (List<GetServiceCollection200ResponseEmbedded> previousValue, element) {
      final GetServiceCollection200ResponseEmbedded? object =
          GetServiceCollection200ResponseEmbedded.fromJson(element);
      if (object is GetServiceCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetServiceCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetServiceCollection200ResponseEmbedded>{};
    }

    return json.entries
        .fold(<String, GetServiceCollection200ResponseEmbedded>{},
            (Map<String, GetServiceCollection200ResponseEmbedded> previousValue,
                element) {
      final GetServiceCollection200ResponseEmbedded? object =
          GetServiceCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetServiceCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetServiceCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetServiceCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetServiceCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetServiceCollection200ResponseEmbedded>>(
          key, GetServiceCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetServiceCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
