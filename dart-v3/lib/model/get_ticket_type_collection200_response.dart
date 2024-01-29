//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketTypeCollection200Response {
  /// Returns a new [GetTicketTypeCollection200Response] instance.
  GetTicketTypeCollection200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetTicketTypeCollection200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketTypeCollection200Response? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetTicketTypeCollection200Response(
      embedded: GetTicketTypeCollection200ResponseEmbedded.fromJson(
          json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypeCollection200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetTicketTypeCollection200ResponseEmbedded? embedded;

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

    return other is GetTicketTypeCollection200Response &&
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

  static List<GetTicketTypeCollection200Response> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetTicketTypeCollection200Response>[];
    }

    return json.fold(<GetTicketTypeCollection200Response>[],
        (List<GetTicketTypeCollection200Response> previousValue, element) {
      final GetTicketTypeCollection200Response? object =
          GetTicketTypeCollection200Response.fromJson(element);
      if (object is GetTicketTypeCollection200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketTypeCollection200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketTypeCollection200Response>{};
    }

    return json.entries.fold(<String, GetTicketTypeCollection200Response>{},
        (Map<String, GetTicketTypeCollection200Response> previousValue,
            element) {
      final GetTicketTypeCollection200Response? object =
          GetTicketTypeCollection200Response.fromJson(element.value);
      if (object is GetTicketTypeCollection200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketTypeCollection200Response-objects as value to a dart map
  static Map<String, List<GetTicketTypeCollection200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketTypeCollection200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketTypeCollection200Response>>(
          key, GetTicketTypeCollection200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetTicketTypeCollection200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
