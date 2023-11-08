//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetTypes200ResponseLinksFirst {
  /// Returns a new [GetAssetTypes200ResponseLinksFirst] instance.
  GetAssetTypes200ResponseLinksFirst({
    this.href,
  });

  /// Returns a new [GetAssetTypes200ResponseLinksFirst] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetTypes200ResponseLinksFirst? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssetTypes200ResponseLinksFirst(
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

    return other is GetAssetTypes200ResponseLinksFirst && other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<GetAssetTypes200ResponseLinksFirst> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <GetAssetTypes200ResponseLinksFirst>[];
    }

    return json.fold(<GetAssetTypes200ResponseLinksFirst>[],
        (List<GetAssetTypes200ResponseLinksFirst> previousValue, element) {
      final GetAssetTypes200ResponseLinksFirst? object =
          GetAssetTypes200ResponseLinksFirst.fromJson(element);
      if (object is GetAssetTypes200ResponseLinksFirst) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetTypes200ResponseLinksFirst> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetTypes200ResponseLinksFirst>{};
    }

    return json.entries.fold(<String, GetAssetTypes200ResponseLinksFirst>{},
        (Map<String, GetAssetTypes200ResponseLinksFirst> previousValue,
            element) {
      final GetAssetTypes200ResponseLinksFirst? object =
          GetAssetTypes200ResponseLinksFirst.fromJson(element.value);
      if (object is GetAssetTypes200ResponseLinksFirst) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetTypes200ResponseLinksFirst-objects as value to a dart map
  static Map<String, List<GetAssetTypes200ResponseLinksFirst>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetTypes200ResponseLinksFirst>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssetTypes200ResponseLinksFirst>>(
          key, GetAssetTypes200ResponseLinksFirst.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetAssetTypes200ResponseLinksFirst[href=$href]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
    };
  }
}
