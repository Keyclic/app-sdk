//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssetJsonhalReadLinksType {
  /// Returns a new [AssetJsonhalReadLinksType] instance.
  AssetJsonhalReadLinksType({
    this.href,
  });

  /// Returns a new [AssetJsonhalReadLinksType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssetJsonhalReadLinksType? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssetJsonhalReadLinksType(
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

    return other is AssetJsonhalReadLinksType && other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<AssetJsonhalReadLinksType> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssetJsonhalReadLinksType>[];
    }

    return json.fold(<AssetJsonhalReadLinksType>[],
        (List<AssetJsonhalReadLinksType> previousValue, element) {
      final AssetJsonhalReadLinksType? object =
          AssetJsonhalReadLinksType.fromJson(element);
      if (object is AssetJsonhalReadLinksType) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssetJsonhalReadLinksType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssetJsonhalReadLinksType>{};
    }

    return json.entries.fold(<String, AssetJsonhalReadLinksType>{},
        (Map<String, AssetJsonhalReadLinksType> previousValue, element) {
      final AssetJsonhalReadLinksType? object =
          AssetJsonhalReadLinksType.fromJson(element.value);
      if (object is AssetJsonhalReadLinksType) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssetJsonhalReadLinksType-objects as value to a dart map
  static Map<String, List<AssetJsonhalReadLinksType>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssetJsonhalReadLinksType>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssetJsonhalReadLinksType>>(
          key, AssetJsonhalReadLinksType.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssetJsonhalReadLinksType[href=$href]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
    };
  }
}
