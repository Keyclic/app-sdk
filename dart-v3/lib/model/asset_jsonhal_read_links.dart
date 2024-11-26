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
  static AssetJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssetJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      type: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'type']),
      parent: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'parent']),
      state: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'state']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksFirst? type;

  GetPlaceCollection200ResponseLinksFirst? parent;

  GetPlaceCollection200ResponseLinksFirst? state;

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

  static List<AssetJsonhalReadLinks> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^type\.').hasMatch(key)))
        r'type': type?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^type\.'))) {
            previousValue.add(element.split(RegExp(r'^type\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^parent\.').hasMatch(key)))
        r'parent': parent?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^parent\.'))) {
            previousValue.add(element.split(RegExp(r'^parent\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^state\.').hasMatch(key)))
        r'state': state?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^state\.'))) {
            previousValue.add(element.split(RegExp(r'^state\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
