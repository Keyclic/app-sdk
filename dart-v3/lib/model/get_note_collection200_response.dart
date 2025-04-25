//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetNoteCollection200Response {
  /// Returns a new [GetNoteCollection200Response] instance.
  GetNoteCollection200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetNoteCollection200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetNoteCollection200Response? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetNoteCollection200Response(
      embedded:
          GetNoteCollection200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetPlaceCollection200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetNoteCollection200ResponseEmbedded? embedded;

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

    return other is GetNoteCollection200Response &&
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

  static List<GetNoteCollection200Response> listFromJson(Iterable? json) {
    if (json == null) {
      return <GetNoteCollection200Response>[];
    }

    return json.fold(<GetNoteCollection200Response>[],
        (List<GetNoteCollection200Response> previousValue, element) {
      final GetNoteCollection200Response? object =
          GetNoteCollection200Response.fromJson(element);
      if (object is GetNoteCollection200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetNoteCollection200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetNoteCollection200Response>{};
    }

    return json.entries.fold(<String, GetNoteCollection200Response>{},
        (Map<String, GetNoteCollection200Response> previousValue, element) {
      final GetNoteCollection200Response? object =
          GetNoteCollection200Response.fromJson(element.value);
      if (object is GetNoteCollection200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetNoteCollection200Response-objects as value to a dart map
  static Map<String, List<GetNoteCollection200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetNoteCollection200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetNoteCollection200Response>>(
          key, GetNoteCollection200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetNoteCollection200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
