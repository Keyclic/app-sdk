//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetIntegrations200Response {
  /// Returns a new [GetIntegrations200Response] instance.
  GetIntegrations200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetIntegrations200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetIntegrations200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetIntegrations200Response(
      embedded: GetIntegrations200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypes200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetIntegrations200ResponseEmbedded? embedded;

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

    return other is GetIntegrations200Response &&
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

  static List<GetIntegrations200Response> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetIntegrations200Response>[];
    }

    return json.fold(<GetIntegrations200Response>[],
        (List<GetIntegrations200Response> previousValue, element) {
      final GetIntegrations200Response? object =
          GetIntegrations200Response.fromJson(element);
      if (object is GetIntegrations200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetIntegrations200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetIntegrations200Response>{};
    }

    return json.entries.fold(<String, GetIntegrations200Response>{},
        (Map<String, GetIntegrations200Response> previousValue, element) {
      final GetIntegrations200Response? object =
          GetIntegrations200Response.fromJson(element.value);
      if (object is GetIntegrations200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetIntegrations200Response-objects as value to a dart map
  static Map<String, List<GetIntegrations200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetIntegrations200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetIntegrations200Response>>(
          key, GetIntegrations200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetIntegrations200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
