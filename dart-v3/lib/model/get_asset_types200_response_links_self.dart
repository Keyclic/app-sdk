//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetTypes200ResponseLinksSelf {
  /// Returns a new [GetAssetTypes200ResponseLinksSelf] instance.
  GetAssetTypes200ResponseLinksSelf({
    this.href,
  });

  /// Returns a new [GetAssetTypes200ResponseLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetTypes200ResponseLinksSelf? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssetTypes200ResponseLinksSelf(
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

    return other is GetAssetTypes200ResponseLinksSelf && other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<GetAssetTypes200ResponseLinksSelf> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetAssetTypes200ResponseLinksSelf>[];
    }

    return json.fold(<GetAssetTypes200ResponseLinksSelf>[],
        (List<GetAssetTypes200ResponseLinksSelf> previousValue, element) {
      final GetAssetTypes200ResponseLinksSelf? object =
          GetAssetTypes200ResponseLinksSelf.fromJson(element);
      if (object is GetAssetTypes200ResponseLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetTypes200ResponseLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetTypes200ResponseLinksSelf>{};
    }

    return json.entries.fold(<String, GetAssetTypes200ResponseLinksSelf>{},
        (Map<String, GetAssetTypes200ResponseLinksSelf> previousValue,
            element) {
      final GetAssetTypes200ResponseLinksSelf? object =
          GetAssetTypes200ResponseLinksSelf.fromJson(element.value);
      if (object is GetAssetTypes200ResponseLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetTypes200ResponseLinksSelf-objects as value to a dart map
  static Map<String, List<GetAssetTypes200ResponseLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetTypes200ResponseLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssetTypes200ResponseLinksSelf>>(
          key, GetAssetTypes200ResponseLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetAssetTypes200ResponseLinksSelf[href=$href]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
    };
  }
}
