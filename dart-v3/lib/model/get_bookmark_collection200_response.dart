//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetBookmarkCollection200Response {
  /// Returns a new [GetBookmarkCollection200Response] instance.
  GetBookmarkCollection200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetBookmarkCollection200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetBookmarkCollection200Response? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetBookmarkCollection200Response(
      embedded:
          GetBookmarkCollection200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetBookmarkCollection200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetBookmarkCollection200ResponseEmbedded? embedded;

  // minimum: 0
  int? totalItems;

  // minimum: 0
  int? itemsPerPage;

  GetBookmarkCollection200ResponseLinks links;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetBookmarkCollection200Response &&
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

  static List<GetBookmarkCollection200Response> listFromJson(Iterable? json) {
    if (json == null) {
      return <GetBookmarkCollection200Response>[];
    }

    return json.fold(<GetBookmarkCollection200Response>[],
        (List<GetBookmarkCollection200Response> previousValue, element) {
      final GetBookmarkCollection200Response? object =
          GetBookmarkCollection200Response.fromJson(element);
      if (object is GetBookmarkCollection200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetBookmarkCollection200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetBookmarkCollection200Response>{};
    }

    return json.entries.fold(<String, GetBookmarkCollection200Response>{},
        (Map<String, GetBookmarkCollection200Response> previousValue, element) {
      final GetBookmarkCollection200Response? object =
          GetBookmarkCollection200Response.fromJson(element.value);
      if (object is GetBookmarkCollection200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetBookmarkCollection200Response-objects as value to a dart map
  static Map<String, List<GetBookmarkCollection200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetBookmarkCollection200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetBookmarkCollection200Response>>(
          key, GetBookmarkCollection200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetBookmarkCollection200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
