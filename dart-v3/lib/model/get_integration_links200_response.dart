//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetIntegrationLinks200Response {
  /// Returns a new [GetIntegrationLinks200Response] instance.
  GetIntegrationLinks200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetIntegrationLinks200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetIntegrationLinks200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetIntegrationLinks200Response(
      embedded: json[r'_embedded'] is! Map
          ? null
          : GetIntegrationLinks200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypes200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetIntegrationLinks200ResponseEmbedded? embedded;

  // minimum: 0
  int? totalItems;

  // minimum: 0
  int? itemsPerPage;

  GetAssetTypes200ResponseLinks links;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetIntegrationLinks200Response &&
        other.embedded == embedded &&
        other.totalItems == totalItems &&
        other.itemsPerPage == itemsPerPage &&
        other.links == links;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (totalItems == null ? 0 : totalItems.hashCode) +
      (itemsPerPage == null ? 0 : itemsPerPage.hashCode) +
      links.hashCode;

  static List<GetIntegrationLinks200Response> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <GetIntegrationLinks200Response>[];
    }

    return json.fold(<GetIntegrationLinks200Response>[],
        (List<GetIntegrationLinks200Response> previousValue, element) {
      final GetIntegrationLinks200Response? object =
          GetIntegrationLinks200Response.fromJson(element);
      if (object is GetIntegrationLinks200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetIntegrationLinks200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetIntegrationLinks200Response>{};
    }

    return json.entries.fold(<String, GetIntegrationLinks200Response>{},
        (Map<String, GetIntegrationLinks200Response> previousValue, element) {
      final GetIntegrationLinks200Response? object =
          GetIntegrationLinks200Response.fromJson(element.value);
      if (object is GetIntegrationLinks200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetIntegrationLinks200Response-objects as value to a dart map
  static Map<String, List<GetIntegrationLinks200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetIntegrationLinks200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetIntegrationLinks200Response>>(
          key, GetIntegrationLinks200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetIntegrationLinks200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
      if ((keys == null && totalItems != null) ||
          (keys?.contains(r'totalItems') ?? false))
        r'totalItems': totalItems,
      if ((keys == null && itemsPerPage != null) ||
          (keys?.contains(r'itemsPerPage') ?? false))
        r'itemsPerPage': itemsPerPage,
      r'_links': links.toJson(),
    };
  }
}
