//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetContracts200ResponseEmbedded {
  /// Returns a new [GetContracts200ResponseEmbedded] instance.
  GetContracts200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetContracts200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetContracts200ResponseEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetContracts200ResponseEmbedded(
      item: ContractJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<ContractJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetContracts200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetContracts200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetContracts200ResponseEmbedded>[];
    }

    return json.fold(<GetContracts200ResponseEmbedded>[],
        (List<GetContracts200ResponseEmbedded> previousValue, element) {
      final GetContracts200ResponseEmbedded? object =
          GetContracts200ResponseEmbedded.fromJson(element);
      if (object is GetContracts200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetContracts200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetContracts200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetContracts200ResponseEmbedded>{},
        (Map<String, GetContracts200ResponseEmbedded> previousValue, element) {
      final GetContracts200ResponseEmbedded? object =
          GetContracts200ResponseEmbedded.fromJson(element.value);
      if (object is GetContracts200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetContracts200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetContracts200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetContracts200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetContracts200ResponseEmbedded>>(
          key, GetContracts200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetContracts200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
