//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetPlaceCollection200ResponseLinksFirst {
  /// Returns a new [GetPlaceCollection200ResponseLinksFirst] instance.
  GetPlaceCollection200ResponseLinksFirst({
    this.href,
  });

  /// Returns a new [GetPlaceCollection200ResponseLinksFirst] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetPlaceCollection200ResponseLinksFirst? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetPlaceCollection200ResponseLinksFirst(
      href: json[r'href'],
    );
  }

  String? href;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetPlaceCollection200ResponseLinksFirst &&
        other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<GetPlaceCollection200ResponseLinksFirst> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetPlaceCollection200ResponseLinksFirst>[];
    }

    return json.fold(<GetPlaceCollection200ResponseLinksFirst>[],
        (List<GetPlaceCollection200ResponseLinksFirst> previousValue, element) {
      final GetPlaceCollection200ResponseLinksFirst? object =
          GetPlaceCollection200ResponseLinksFirst.fromJson(element);
      if (object is GetPlaceCollection200ResponseLinksFirst) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetPlaceCollection200ResponseLinksFirst> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetPlaceCollection200ResponseLinksFirst>{};
    }

    return json.entries
        .fold(<String, GetPlaceCollection200ResponseLinksFirst>{},
            (Map<String, GetPlaceCollection200ResponseLinksFirst> previousValue,
                element) {
      final GetPlaceCollection200ResponseLinksFirst? object =
          GetPlaceCollection200ResponseLinksFirst.fromJson(element.value);
      if (object is GetPlaceCollection200ResponseLinksFirst) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetPlaceCollection200ResponseLinksFirst-objects as value to a dart map
  static Map<String, List<GetPlaceCollection200ResponseLinksFirst>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetPlaceCollection200ResponseLinksFirst>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetPlaceCollection200ResponseLinksFirst>>(
          key, GetPlaceCollection200ResponseLinksFirst.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetPlaceCollection200ResponseLinksFirst[href=$href]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
    };
  }
}
