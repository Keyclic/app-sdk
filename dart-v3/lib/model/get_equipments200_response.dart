//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetEquipments200Response {
  /// Returns a new [GetEquipments200Response] instance.
  GetEquipments200Response({
    this.embedded,
    this.totalItems,
    this.itemsPerPage,
    required this.links,
  });

  /// Returns a new [GetEquipments200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetEquipments200Response? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetEquipments200Response(
      embedded: json[r'_embedded'] is! Map
          ? null
          : GetEquipments200ResponseEmbedded.fromJson(json[r'_embedded']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
      links: GetAssetTypes200ResponseLinks.fromJson(json[r'_links'])!,
    );
  }

  GetEquipments200ResponseEmbedded? embedded;

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

    return other is GetEquipments200Response &&
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

  static List<GetEquipments200Response> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetEquipments200Response>[];
    }

    return json.fold(<GetEquipments200Response>[],
        (List<GetEquipments200Response> previousValue, element) {
      final GetEquipments200Response? object =
          GetEquipments200Response.fromJson(element);
      if (object is GetEquipments200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetEquipments200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetEquipments200Response>{};
    }

    return json.entries.fold(<String, GetEquipments200Response>{},
        (Map<String, GetEquipments200Response> previousValue, element) {
      final GetEquipments200Response? object =
          GetEquipments200Response.fromJson(element.value);
      if (object is GetEquipments200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetEquipments200Response-objects as value to a dart map
  static Map<String, List<GetEquipments200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetEquipments200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetEquipments200Response>>(
          key, GetEquipments200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetEquipments200Response[embedded=$embedded, totalItems=$totalItems, itemsPerPage=$itemsPerPage, links=$links]';

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
