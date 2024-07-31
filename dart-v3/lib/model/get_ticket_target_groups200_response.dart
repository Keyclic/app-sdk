//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketTargetGroups200Response {
  /// Returns a new [GetTicketTargetGroups200Response] instance.
  GetTicketTargetGroups200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetTicketTargetGroups200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketTargetGroups200Response? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetTicketTargetGroups200Response(
      embedded:
          GetTicketTargetGroups200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetPlaceCollection200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetTicketTargetGroups200ResponseEmbedded? embedded;

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

    return other is GetTicketTargetGroups200Response &&
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

  static List<GetTicketTargetGroups200Response> listFromJson(Iterable? json) {
    if (json == null) {
      return <GetTicketTargetGroups200Response>[];
    }

    return json.fold(<GetTicketTargetGroups200Response>[],
        (List<GetTicketTargetGroups200Response> previousValue, element) {
      final GetTicketTargetGroups200Response? object =
          GetTicketTargetGroups200Response.fromJson(element);
      if (object is GetTicketTargetGroups200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketTargetGroups200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketTargetGroups200Response>{};
    }

    return json.entries.fold(<String, GetTicketTargetGroups200Response>{},
        (Map<String, GetTicketTargetGroups200Response> previousValue, element) {
      final GetTicketTargetGroups200Response? object =
          GetTicketTargetGroups200Response.fromJson(element.value);
      if (object is GetTicketTargetGroups200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketTargetGroups200Response-objects as value to a dart map
  static Map<String, List<GetTicketTargetGroups200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketTargetGroups200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketTargetGroups200Response>>(
          key, GetTicketTargetGroups200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetTicketTargetGroups200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
