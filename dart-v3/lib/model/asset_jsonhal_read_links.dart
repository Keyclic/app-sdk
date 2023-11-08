//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssetJsonhalReadLinks {
  /// Returns a new [AssetJsonhalReadLinks] instance.
  AssetJsonhalReadLinks({
    this.self,
    this.type,
    this.parent,
    this.state,
  });

  /// Returns a new [AssetJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssetJsonhalReadLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssetJsonhalReadLinks(
      self: json[r'self'] is! Map
          ? null
          : GetAssetTypes200ResponseLinksFirst.fromJson(json[r'self']),
      type: json[r'type'] is! Map
          ? null
          : GetAssetTypes200ResponseLinksFirst.fromJson(json[r'type']),
      parent: json[r'parent'] is! Map
          ? null
          : GetAssetTypes200ResponseLinksFirst.fromJson(json[r'parent']),
      state: json[r'state'] is! Map
          ? null
          : GetAssetTypes200ResponseLinksFirst.fromJson(json[r'state']),
    );
  }

  GetAssetTypes200ResponseLinksFirst? self;

  GetAssetTypes200ResponseLinksFirst? type;

  GetAssetTypes200ResponseLinksFirst? parent;

  GetAssetTypes200ResponseLinksFirst? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssetJsonhalReadLinks &&
        other.self == self &&
        other.type == type &&
        other.parent == parent &&
        other.state == state;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<AssetJsonhalReadLinks> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <AssetJsonhalReadLinks>[];
    }

    return json.fold(<AssetJsonhalReadLinks>[],
        (List<AssetJsonhalReadLinks> previousValue, element) {
      final AssetJsonhalReadLinks? object =
          AssetJsonhalReadLinks.fromJson(element);
      if (object is AssetJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssetJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssetJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, AssetJsonhalReadLinks>{},
        (Map<String, AssetJsonhalReadLinks> previousValue, element) {
      final AssetJsonhalReadLinks? object =
          AssetJsonhalReadLinks.fromJson(element.value);
      if (object is AssetJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssetJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<AssetJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssetJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssetJsonhalReadLinks>>(
          key, AssetJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssetJsonhalReadLinks[self=$self, type=$type, parent=$parent, state=$state]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type?.toJson(),
      if ((keys == null && parent != null) ||
          (keys?.contains(r'parent') ?? false))
        r'parent': parent?.toJson(),
      if ((keys == null && state != null) ||
          (keys?.contains(r'state') ?? false))
        r'state': state?.toJson(),
    };
  }
}
