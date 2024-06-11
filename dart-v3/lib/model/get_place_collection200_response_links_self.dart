//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetPlaceCollection200ResponseLinksSelf {
  /// Returns a new [GetPlaceCollection200ResponseLinksSelf] instance.
  GetPlaceCollection200ResponseLinksSelf({
    this.href,
  });

  /// Returns a new [GetPlaceCollection200ResponseLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetPlaceCollection200ResponseLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetPlaceCollection200ResponseLinksSelf(
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

    return other is GetPlaceCollection200ResponseLinksSelf &&
        other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<GetPlaceCollection200ResponseLinksSelf> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetPlaceCollection200ResponseLinksSelf>[];
    }

    return json.fold(<GetPlaceCollection200ResponseLinksSelf>[],
        (List<GetPlaceCollection200ResponseLinksSelf> previousValue, element) {
      final GetPlaceCollection200ResponseLinksSelf? object =
          GetPlaceCollection200ResponseLinksSelf.fromJson(element);
      if (object is GetPlaceCollection200ResponseLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetPlaceCollection200ResponseLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetPlaceCollection200ResponseLinksSelf>{};
    }

    return json.entries.fold(<String, GetPlaceCollection200ResponseLinksSelf>{},
        (Map<String, GetPlaceCollection200ResponseLinksSelf> previousValue,
            element) {
      final GetPlaceCollection200ResponseLinksSelf? object =
          GetPlaceCollection200ResponseLinksSelf.fromJson(element.value);
      if (object is GetPlaceCollection200ResponseLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetPlaceCollection200ResponseLinksSelf-objects as value to a dart map
  static Map<String, List<GetPlaceCollection200ResponseLinksSelf>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetPlaceCollection200ResponseLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetPlaceCollection200ResponseLinksSelf>>(
          key, GetPlaceCollection200ResponseLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetPlaceCollection200ResponseLinksSelf[href=$href]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
    };
  }
}
