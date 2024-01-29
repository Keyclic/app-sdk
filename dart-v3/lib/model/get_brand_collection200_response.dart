//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetBrandCollection200Response {
  /// Returns a new [GetBrandCollection200Response] instance.
  GetBrandCollection200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetBrandCollection200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetBrandCollection200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetBrandCollection200Response(
      embedded:
          GetBrandCollection200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypeCollection200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetBrandCollection200ResponseEmbedded? embedded;

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

    return other is GetBrandCollection200Response &&
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

  static List<GetBrandCollection200Response> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetBrandCollection200Response>[];
    }

    return json.fold(<GetBrandCollection200Response>[],
        (List<GetBrandCollection200Response> previousValue, element) {
      final GetBrandCollection200Response? object =
          GetBrandCollection200Response.fromJson(element);
      if (object is GetBrandCollection200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetBrandCollection200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetBrandCollection200Response>{};
    }

    return json.entries.fold(<String, GetBrandCollection200Response>{},
        (Map<String, GetBrandCollection200Response> previousValue, element) {
      final GetBrandCollection200Response? object =
          GetBrandCollection200Response.fromJson(element.value);
      if (object is GetBrandCollection200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetBrandCollection200Response-objects as value to a dart map
  static Map<String, List<GetBrandCollection200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetBrandCollection200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetBrandCollection200Response>>(
          key, GetBrandCollection200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetBrandCollection200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
