//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketTypes200Response {
  /// Returns a new [GetTicketTypes200Response] instance.
  GetTicketTypes200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetTicketTypes200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketTypes200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetTicketTypes200Response(
      embedded: json[r'_embedded'] is! Map
          ? null
          : GetTicketTypes200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypes200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetTicketTypes200ResponseEmbedded? embedded;

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

    return other is GetTicketTypes200Response &&
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

  static List<GetTicketTypes200Response> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetTicketTypes200Response>[];
    }

    return json.fold(<GetTicketTypes200Response>[],
        (List<GetTicketTypes200Response> previousValue, element) {
      final GetTicketTypes200Response? object =
          GetTicketTypes200Response.fromJson(element);
      if (object is GetTicketTypes200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketTypes200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketTypes200Response>{};
    }

    return json.entries.fold(<String, GetTicketTypes200Response>{},
        (Map<String, GetTicketTypes200Response> previousValue, element) {
      final GetTicketTypes200Response? object =
          GetTicketTypes200Response.fromJson(element.value);
      if (object is GetTicketTypes200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketTypes200Response-objects as value to a dart map
  static Map<String, List<GetTicketTypes200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketTypes200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketTypes200Response>>(
          key, GetTicketTypes200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetTicketTypes200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
