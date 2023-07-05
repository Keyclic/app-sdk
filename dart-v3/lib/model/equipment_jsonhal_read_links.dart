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
  static EquipmentJsonhalReadLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EquipmentJsonhalReadLinks(
      self: GetAssetTypes200ResponseLinksFirst.fromJson(json[r'self']),
      brand: GetAssetTypes200ResponseLinksFirst.fromJson(json[r'brand']),
      type: GetAssetTypes200ResponseLinksFirst.fromJson(json[r'type']),
      parent: GetAssetTypes200ResponseLinksFirst.fromJson(json[r'parent']),
      state: GetAssetTypes200ResponseLinksFirst.fromJson(json[r'state']),
    );
  }

  GetAssetTypes200ResponseLinksFirst? self;

  GetAssetTypes200ResponseLinksFirst? brand;

  GetAssetTypes200ResponseLinksFirst? type;

  GetAssetTypes200ResponseLinksFirst? parent;

  GetAssetTypes200ResponseLinksFirst? state;

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

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
      if (brand != null) r'brand': brand,
      if (type != null) r'type': type,
      if (parent != null) r'parent': parent,
      if (state != null) r'state': state,
    };
  }
}
