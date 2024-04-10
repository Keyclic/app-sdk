//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PlaceJsonhalReadLinks {
  /// Returns a new [PlaceJsonhalReadLinks] instance.
  PlaceJsonhalReadLinks({
    this.self,
    this.parent,
  });

  /// Returns a new [PlaceJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceJsonhalReadLinks(
      self: GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'self']),
      parent:
          GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'parent']),
    );
  }

  GetAssetTypeCollection200ResponseLinksFirst? self;

  GetAssetTypeCollection200ResponseLinksFirst? parent;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceJsonhalReadLinks &&
        other.self == self &&
        other.parent == parent;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (parent == null ? 0 : parent.hashCode);

  static List<PlaceJsonhalReadLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceJsonhalReadLinks>[];
    }

    return json.fold(<PlaceJsonhalReadLinks>[],
        (List<PlaceJsonhalReadLinks> previousValue, element) {
      final PlaceJsonhalReadLinks? object =
          PlaceJsonhalReadLinks.fromJson(element);
      if (object is PlaceJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, PlaceJsonhalReadLinks>{},
        (Map<String, PlaceJsonhalReadLinks> previousValue, element) {
      final PlaceJsonhalReadLinks? object =
          PlaceJsonhalReadLinks.fromJson(element.value);
      if (object is PlaceJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<PlaceJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceJsonhalReadLinks>>(
          key, PlaceJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceJsonhalReadLinks[self=$self, parent=$parent]';

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
      if (keys == null || keys.any((key) => RegExp(r'^parent\.').hasMatch(key)))
        r'parent': parent?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^parent\.'))) {
            previousValue.add(element.split(RegExp(r'^parent\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
