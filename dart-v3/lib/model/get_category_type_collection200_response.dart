//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetCategoryTypeCollection200Response {
  /// Returns a new [GetCategoryTypeCollection200Response] instance.
  GetCategoryTypeCollection200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetCategoryTypeCollection200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetCategoryTypeCollection200Response? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetCategoryTypeCollection200Response(
      embedded: GetCategoryTypeCollection200ResponseEmbedded.fromJson(
          json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypeCollection200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetCategoryTypeCollection200ResponseEmbedded? embedded;

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

    return other is GetCategoryTypeCollection200Response &&
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

  static List<GetCategoryTypeCollection200Response> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetCategoryTypeCollection200Response>[];
    }

    return json.fold(<GetCategoryTypeCollection200Response>[],
        (List<GetCategoryTypeCollection200Response> previousValue, element) {
      final GetCategoryTypeCollection200Response? object =
          GetCategoryTypeCollection200Response.fromJson(element);
      if (object is GetCategoryTypeCollection200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetCategoryTypeCollection200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetCategoryTypeCollection200Response>{};
    }

    return json.entries.fold(<String, GetCategoryTypeCollection200Response>{},
        (Map<String, GetCategoryTypeCollection200Response> previousValue,
            element) {
      final GetCategoryTypeCollection200Response? object =
          GetCategoryTypeCollection200Response.fromJson(element.value);
      if (object is GetCategoryTypeCollection200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetCategoryTypeCollection200Response-objects as value to a dart map
  static Map<String, List<GetCategoryTypeCollection200Response>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetCategoryTypeCollection200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetCategoryTypeCollection200Response>>(
          key, GetCategoryTypeCollection200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetCategoryTypeCollection200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'totalItems'))
        r'totalItems': totalItems,
      if (keys == null || keys.contains(r'itemsPerPage'))
        r'itemsPerPage': itemsPerPage,
      r'_links': links.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^links\.'))) {
          previousValue.add(element.split(RegExp(r'^links\.')).last);
        }

        return previousValue;
      })),
    };
  }
}
