//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetContractCollection200ResponseEmbedded {
  /// Returns a new [GetContractCollection200ResponseEmbedded] instance.
  GetContractCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetContractCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetContractCollection200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetContractCollection200ResponseEmbedded(
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

    return other is GetContractCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetContractCollection200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetContractCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetContractCollection200ResponseEmbedded>[],
        (List<GetContractCollection200ResponseEmbedded> previousValue,
            element) {
      final GetContractCollection200ResponseEmbedded? object =
          GetContractCollection200ResponseEmbedded.fromJson(element);
      if (object is GetContractCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetContractCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetContractCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetContractCollection200ResponseEmbedded>{},
        (Map<String, GetContractCollection200ResponseEmbedded> previousValue,
            element) {
      final GetContractCollection200ResponseEmbedded? object =
          GetContractCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetContractCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetContractCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetContractCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetContractCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetContractCollection200ResponseEmbedded>>(
          key, GetContractCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetContractCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
