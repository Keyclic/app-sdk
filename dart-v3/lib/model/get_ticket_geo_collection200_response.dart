//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketGeoCollection200Response {
  /// Returns a new [GetTicketGeoCollection200Response] instance.
  GetTicketGeoCollection200Response({
    this.type,
    this.features = const [],
    this.totalItems,
    this.itemsPerPage,
  });

  /// Returns a new [GetTicketGeoCollection200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketGeoCollection200Response? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetTicketGeoCollection200Response(
      type: json[r'type'],
      features: TicketJsongeoRead.listFromJson(json[r'features']),
      totalItems: json[r'totalItems'],
      itemsPerPage: json[r'itemsPerPage'],
    );
  }

  String? type;

  List<TicketJsongeoRead> features;

  // minimum: 0
  int? totalItems;

  // minimum: 0
  int? itemsPerPage;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetTicketGeoCollection200Response &&
        other.type == type &&
        DeepCollectionEquality.unordered().equals(features, other.features) &&
        other.totalItems == totalItems &&
        other.itemsPerPage == itemsPerPage;
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      features.hashCode +
      (totalItems == null ? 0 : totalItems.hashCode) +
      (itemsPerPage == null ? 0 : itemsPerPage.hashCode);

  static List<GetTicketGeoCollection200Response> listFromJson(Iterable? json) {
    if (json == null) {
      return <GetTicketGeoCollection200Response>[];
    }

    return json.fold(<GetTicketGeoCollection200Response>[],
        (List<GetTicketGeoCollection200Response> previousValue, element) {
      final GetTicketGeoCollection200Response? object =
          GetTicketGeoCollection200Response.fromJson(element);
      if (object is GetTicketGeoCollection200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketGeoCollection200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketGeoCollection200Response>{};
    }

    return json.entries.fold(<String, GetTicketGeoCollection200Response>{},
        (Map<String, GetTicketGeoCollection200Response> previousValue,
            element) {
      final GetTicketGeoCollection200Response? object =
          GetTicketGeoCollection200Response.fromJson(element.value);
      if (object is GetTicketGeoCollection200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketGeoCollection200Response-objects as value to a dart map
  static Map<String, List<GetTicketGeoCollection200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketGeoCollection200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketGeoCollection200Response>>(
          key, GetTicketGeoCollection200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetTicketGeoCollection200Response[type=$type, features=$features, totalItems=$totalItems, itemsPerPage=$itemsPerPage]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'type')) r'type': type,
      r'features': features,
      if (keys == null || keys.contains(r'totalItems'))
        r'totalItems': totalItems,
      if (keys == null || keys.contains(r'itemsPerPage'))
        r'itemsPerPage': itemsPerPage,
    };
  }
}
