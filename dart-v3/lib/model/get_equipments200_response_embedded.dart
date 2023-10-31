//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetEquipments200ResponseEmbedded {
  /// Returns a new [GetEquipments200ResponseEmbedded] instance.
  GetEquipments200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetEquipments200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetEquipments200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetEquipments200ResponseEmbedded(
      item: EquipmentJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<EquipmentJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetEquipments200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetEquipments200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetEquipments200ResponseEmbedded>[];
    }

    return json.fold(<GetEquipments200ResponseEmbedded>[],
        (List<GetEquipments200ResponseEmbedded> previousValue, element) {
      final GetEquipments200ResponseEmbedded? object =
          GetEquipments200ResponseEmbedded.fromJson(element);
      if (object is GetEquipments200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetEquipments200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetEquipments200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetEquipments200ResponseEmbedded>{},
        (Map<String, GetEquipments200ResponseEmbedded> previousValue, element) {
      final GetEquipments200ResponseEmbedded? object =
          GetEquipments200ResponseEmbedded.fromJson(element.value);
      if (object is GetEquipments200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetEquipments200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetEquipments200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetEquipments200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetEquipments200ResponseEmbedded>>(
          key, GetEquipments200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetEquipments200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
