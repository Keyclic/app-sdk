//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetContracts200Response {
  /// Returns a new [GetContracts200Response] instance.
  GetContracts200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetContracts200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetContracts200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetContracts200Response(
      embedded: json[r'_embedded'] is! Map
          ? null
          : GetContracts200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypes200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetContracts200ResponseEmbedded? embedded;

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

    return other is GetContracts200Response &&
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

  static List<GetContracts200Response> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <GetContracts200Response>[];
    }

    return json.fold(<GetContracts200Response>[],
        (List<GetContracts200Response> previousValue, element) {
      final GetContracts200Response? object =
          GetContracts200Response.fromJson(element);
      if (object is GetContracts200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetContracts200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetContracts200Response>{};
    }

    return json.entries.fold(<String, GetContracts200Response>{},
        (Map<String, GetContracts200Response> previousValue, element) {
      final GetContracts200Response? object =
          GetContracts200Response.fromJson(element.value);
      if (object is GetContracts200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetContracts200Response-objects as value to a dart map
  static Map<String, List<GetContracts200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetContracts200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetContracts200Response>>(
          key, GetContracts200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetContracts200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
