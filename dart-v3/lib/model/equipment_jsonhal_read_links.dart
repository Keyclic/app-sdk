//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentJsonhalReadLinks {
  /// Returns a new [EquipmentJsonhalReadLinks] instance.
  EquipmentJsonhalReadLinks({
    this.self,
    this.brand,
    this.type,
    this.parent,
    this.state,
  });

  /// Returns a new [EquipmentJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return EquipmentJsonhalReadLinks(
      self: GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'self']),
      brand:
          GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'brand']),
      type: GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'type']),
      parent:
          GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'parent']),
      state:
          GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'state']),
    );
  }

  GetAssetTypeCollection200ResponseLinksFirst? self;

  GetAssetTypeCollection200ResponseLinksFirst? brand;

  GetAssetTypeCollection200ResponseLinksFirst? type;

  GetAssetTypeCollection200ResponseLinksFirst? parent;

  GetAssetTypeCollection200ResponseLinksFirst? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EquipmentJsonhalReadLinks &&
        other.self == self &&
        other.brand == brand &&
        other.type == type &&
        other.parent == parent &&
        other.state == state;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (brand == null ? 0 : brand.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<EquipmentJsonhalReadLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <EquipmentJsonhalReadLinks>[];
    }

    return json.fold(<EquipmentJsonhalReadLinks>[],
        (List<EquipmentJsonhalReadLinks> previousValue, element) {
      final EquipmentJsonhalReadLinks? object =
          EquipmentJsonhalReadLinks.fromJson(element);
      if (object is EquipmentJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, EquipmentJsonhalReadLinks>{},
        (Map<String, EquipmentJsonhalReadLinks> previousValue, element) {
      final EquipmentJsonhalReadLinks? object =
          EquipmentJsonhalReadLinks.fromJson(element.value);
      if (object is EquipmentJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<EquipmentJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EquipmentJsonhalReadLinks>>(
          key, EquipmentJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'EquipmentJsonhalReadLinks[self=$self, brand=$brand, type=$type, parent=$parent, state=$state]';

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
      if (keys == null || keys.any((key) => RegExp(r'^brand\.').hasMatch(key)))
        r'brand': brand?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^brand\.'))) {
            previousValue.add(element.split(RegExp(r'^brand\.')).last);
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
