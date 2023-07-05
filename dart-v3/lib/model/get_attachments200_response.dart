//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAttachments200Response {
  /// Returns a new [GetAttachments200Response] instance.
  GetAttachments200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetAttachments200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAttachments200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAttachments200Response(
      embedded: GetAttachments200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypes200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetAttachments200ResponseEmbedded? embedded;

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

    return other is GetAttachments200Response &&
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

  static List<GetAttachments200Response> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetAttachments200Response>[];
    }

    return json.fold(<GetAttachments200Response>[],
        (List<GetAttachments200Response> previousValue, element) {
      final GetAttachments200Response? object =
          GetAttachments200Response.fromJson(element);
      if (object is GetAttachments200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAttachments200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAttachments200Response>{};
    }

    return json.entries.fold(<String, GetAttachments200Response>{},
        (Map<String, GetAttachments200Response> previousValue, element) {
      final GetAttachments200Response? object =
          GetAttachments200Response.fromJson(element.value);
      if (object is GetAttachments200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAttachments200Response-objects as value to a dart map
  static Map<String, List<GetAttachments200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAttachments200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAttachments200Response>>(
          key, GetAttachments200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetAttachments200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (totalItems != null) r'totalItems': totalItems,
      if (itemsPerPage != null) r'itemsPerPage': itemsPerPage,
      r'_links': links,
    };
  }
}
