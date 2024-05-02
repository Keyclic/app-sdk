//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetSlaPolicyCollection200Response {
  /// Returns a new [GetSlaPolicyCollection200Response] instance.
  GetSlaPolicyCollection200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetSlaPolicyCollection200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetSlaPolicyCollection200Response? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetSlaPolicyCollection200Response(
      embedded: GetSlaPolicyCollection200ResponseEmbedded.fromJson(
          json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetPlaceCollection200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetSlaPolicyCollection200ResponseEmbedded? embedded;

  // minimum: 0
  int? totalItems;

  // minimum: 0
  int? itemsPerPage;

  GetPlaceCollection200ResponseLinks links;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetSlaPolicyCollection200Response &&
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

  static List<GetSlaPolicyCollection200Response> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetSlaPolicyCollection200Response>[];
    }

    return json.fold(<GetSlaPolicyCollection200Response>[],
        (List<GetSlaPolicyCollection200Response> previousValue, element) {
      final GetSlaPolicyCollection200Response? object =
          GetSlaPolicyCollection200Response.fromJson(element);
      if (object is GetSlaPolicyCollection200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetSlaPolicyCollection200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetSlaPolicyCollection200Response>{};
    }

    return json.entries.fold(<String, GetSlaPolicyCollection200Response>{},
        (Map<String, GetSlaPolicyCollection200Response> previousValue,
            element) {
      final GetSlaPolicyCollection200Response? object =
          GetSlaPolicyCollection200Response.fromJson(element.value);
      if (object is GetSlaPolicyCollection200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetSlaPolicyCollection200Response-objects as value to a dart map
  static Map<String, List<GetSlaPolicyCollection200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetSlaPolicyCollection200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetSlaPolicyCollection200Response>>(
          key, GetSlaPolicyCollection200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetSlaPolicyCollection200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
