//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetContractTypeCollection200Response {
  /// Returns a new [GetContractTypeCollection200Response] instance.
  GetContractTypeCollection200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetContractTypeCollection200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetContractTypeCollection200Response? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetContractTypeCollection200Response(
      embedded: GetContractTypeCollection200ResponseEmbedded.fromJson(
          json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypeCollection200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetContractTypeCollection200ResponseEmbedded? embedded;

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

    return other is GetContractTypeCollection200Response &&
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

  static List<GetContractTypeCollection200Response> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetContractTypeCollection200Response>[];
    }

    return json.fold(<GetContractTypeCollection200Response>[],
        (List<GetContractTypeCollection200Response> previousValue, element) {
      final GetContractTypeCollection200Response? object =
          GetContractTypeCollection200Response.fromJson(element);
      if (object is GetContractTypeCollection200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetContractTypeCollection200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetContractTypeCollection200Response>{};
    }

    return json.entries.fold(<String, GetContractTypeCollection200Response>{},
        (Map<String, GetContractTypeCollection200Response> previousValue,
            element) {
      final GetContractTypeCollection200Response? object =
          GetContractTypeCollection200Response.fromJson(element.value);
      if (object is GetContractTypeCollection200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetContractTypeCollection200Response-objects as value to a dart map
  static Map<String, List<GetContractTypeCollection200Response>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetContractTypeCollection200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetContractTypeCollection200Response>>(
          key, GetContractTypeCollection200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetContractTypeCollection200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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