//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetTypes200Response {
  /// Returns a new [GetAssetTypes200Response] instance.
  GetAssetTypes200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetAssetTypes200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetTypes200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssetTypes200Response(
      embedded: GetAssetTypes200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypes200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetAssetTypes200ResponseEmbedded? embedded;

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

    return other is GetAssetTypes200Response &&
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

  static List<GetAssetTypes200Response> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetAssetTypes200Response>[];
    }

    return json.fold(<GetAssetTypes200Response>[],
        (List<GetAssetTypes200Response> previousValue, element) {
      final GetAssetTypes200Response? object =
          GetAssetTypes200Response.fromJson(element);
      if (object is GetAssetTypes200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetTypes200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetTypes200Response>{};
    }

    return json.entries.fold(<String, GetAssetTypes200Response>{},
        (Map<String, GetAssetTypes200Response> previousValue, element) {
      final GetAssetTypes200Response? object =
          GetAssetTypes200Response.fromJson(element.value);
      if (object is GetAssetTypes200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetTypes200Response-objects as value to a dart map
  static Map<String, List<GetAssetTypes200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetTypes200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssetTypes200Response>>(
          key, GetAssetTypes200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetAssetTypes200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (totalItems != null) r'totalItems': totalItems,
      if (itemsPerPage != null) r'itemsPerPage': itemsPerPage,
      r'_links': links,
    };
  }
}
