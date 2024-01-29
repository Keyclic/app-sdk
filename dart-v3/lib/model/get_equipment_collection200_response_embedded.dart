//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetEquipmentCollection200ResponseEmbedded {
  /// Returns a new [GetEquipmentCollection200ResponseEmbedded] instance.
  GetEquipmentCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetEquipmentCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetEquipmentCollection200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetEquipmentCollection200ResponseEmbedded(
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

    return other is GetEquipmentCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetEquipmentCollection200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetEquipmentCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetEquipmentCollection200ResponseEmbedded>[],
        (List<GetEquipmentCollection200ResponseEmbedded> previousValue,
            element) {
      final GetEquipmentCollection200ResponseEmbedded? object =
          GetEquipmentCollection200ResponseEmbedded.fromJson(element);
      if (object is GetEquipmentCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetEquipmentCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetEquipmentCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetEquipmentCollection200ResponseEmbedded>{},
        (Map<String, GetEquipmentCollection200ResponseEmbedded> previousValue,
            element) {
      final GetEquipmentCollection200ResponseEmbedded? object =
          GetEquipmentCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetEquipmentCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetEquipmentCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetEquipmentCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetEquipmentCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetEquipmentCollection200ResponseEmbedded>>(
          key, GetEquipmentCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetEquipmentCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
