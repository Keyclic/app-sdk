//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssetTypeJsonhalReadLinks {
  /// Returns a new [AssetTypeJsonhalReadLinks] instance.
  AssetTypeJsonhalReadLinks({
    this.self,
  });

  /// Returns a new [AssetTypeJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssetTypeJsonhalReadLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssetTypeJsonhalReadLinks(
      self: GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'self']),
    );
  }

  GetAssetTypeCollection200ResponseLinksFirst? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssetTypeJsonhalReadLinks && other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<AssetTypeJsonhalReadLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssetTypeJsonhalReadLinks>[];
    }

    return json.fold(<AssetTypeJsonhalReadLinks>[],
        (List<AssetTypeJsonhalReadLinks> previousValue, element) {
      final AssetTypeJsonhalReadLinks? object =
          AssetTypeJsonhalReadLinks.fromJson(element);
      if (object is AssetTypeJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssetTypeJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssetTypeJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, AssetTypeJsonhalReadLinks>{},
        (Map<String, AssetTypeJsonhalReadLinks> previousValue, element) {
      final AssetTypeJsonhalReadLinks? object =
          AssetTypeJsonhalReadLinks.fromJson(element.value);
      if (object is AssetTypeJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssetTypeJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<AssetTypeJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssetTypeJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssetTypeJsonhalReadLinks>>(
          key, AssetTypeJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssetTypeJsonhalReadLinks[self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
