//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetIntegrationLinkCollection200Response {
  /// Returns a new [GetIntegrationLinkCollection200Response] instance.
  GetIntegrationLinkCollection200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetIntegrationLinkCollection200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetIntegrationLinkCollection200Response? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetIntegrationLinkCollection200Response(
      embedded: GetIntegrationLinkCollection200ResponseEmbedded.fromJson(
          json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypeCollection200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetIntegrationLinkCollection200ResponseEmbedded? embedded;

  // minimum: 0
  int? totalItems;

  // minimum: 0
  int? itemsPerPage;

  GetAssetTypeCollection200ResponseLinks links;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetIntegrationLinkCollection200Response &&
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

  static List<GetIntegrationLinkCollection200Response> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetIntegrationLinkCollection200Response>[];
    }

    return json.fold(<GetIntegrationLinkCollection200Response>[],
        (List<GetIntegrationLinkCollection200Response> previousValue, element) {
      final GetIntegrationLinkCollection200Response? object =
          GetIntegrationLinkCollection200Response.fromJson(element);
      if (object is GetIntegrationLinkCollection200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetIntegrationLinkCollection200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetIntegrationLinkCollection200Response>{};
    }

    return json.entries
        .fold(<String, GetIntegrationLinkCollection200Response>{},
            (Map<String, GetIntegrationLinkCollection200Response> previousValue,
                element) {
      final GetIntegrationLinkCollection200Response? object =
          GetIntegrationLinkCollection200Response.fromJson(element.value);
      if (object is GetIntegrationLinkCollection200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetIntegrationLinkCollection200Response-objects as value to a dart map
  static Map<String, List<GetIntegrationLinkCollection200Response>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetIntegrationLinkCollection200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetIntegrationLinkCollection200Response>>(
          key, GetIntegrationLinkCollection200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetIntegrationLinkCollection200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
