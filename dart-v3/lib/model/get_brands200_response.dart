//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetBrands200Response {
  /// Returns a new [GetBrands200Response] instance.
  GetBrands200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetBrands200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetBrands200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetBrands200Response(
      embedded: json[r'_embedded'] is! Map
          ? null
          : GetBrands200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypes200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetBrands200ResponseEmbedded? embedded;

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

    return other is GetBrands200Response &&
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

  static List<GetBrands200Response> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <GetBrands200Response>[];
    }

    return json.fold(<GetBrands200Response>[],
        (List<GetBrands200Response> previousValue, element) {
      final GetBrands200Response? object =
          GetBrands200Response.fromJson(element);
      if (object is GetBrands200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetBrands200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetBrands200Response>{};
    }

    return json.entries.fold(<String, GetBrands200Response>{},
        (Map<String, GetBrands200Response> previousValue, element) {
      final GetBrands200Response? object =
          GetBrands200Response.fromJson(element.value);
      if (object is GetBrands200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetBrands200Response-objects as value to a dart map
  static Map<String, List<GetBrands200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetBrands200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetBrands200Response>>(
          key, GetBrands200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetBrands200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
