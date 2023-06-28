//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssets200Response {
  /// Returns a new [GetAssets200Response] instance.
  GetAssets200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetAssets200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssets200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssets200Response(
      embedded: GetAssets200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypes200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetAssets200ResponseEmbedded? embedded;

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

    return other is GetAssets200Response &&
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

  static List<GetAssets200Response> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetAssets200Response>[];
    }

    return json.fold(<GetAssets200Response>[],
        (List<GetAssets200Response> previousValue, element) {
      final GetAssets200Response? object =
          GetAssets200Response.fromJson(element);
      if (object is GetAssets200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssets200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssets200Response>{};
    }

    return json.entries.fold(<String, GetAssets200Response>{},
        (Map<String, GetAssets200Response> previousValue, element) {
      final GetAssets200Response? object =
          GetAssets200Response.fromJson(element.value);
      if (object is GetAssets200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssets200Response-objects as value to a dart map
  static Map<String, List<GetAssets200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssets200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssets200Response>>(
          key, GetAssets200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetAssets200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (totalItems != null) r'totalItems': totalItems,
      if (itemsPerPage != null) r'itemsPerPage': itemsPerPage,
      r'_links': links,
    };
  }
}
