//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetContractTypes200ResponseEmbedded {
  /// Returns a new [GetContractTypes200ResponseEmbedded] instance.
  GetContractTypes200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetContractTypes200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetContractTypes200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetContractTypes200ResponseEmbedded(
      item: ContractTypeJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<ContractTypeJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetContractTypes200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetContractTypes200ResponseEmbedded> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <GetContractTypes200ResponseEmbedded>[];
    }

    return json.fold(<GetContractTypes200ResponseEmbedded>[],
        (List<GetContractTypes200ResponseEmbedded> previousValue, element) {
      final GetContractTypes200ResponseEmbedded? object =
          GetContractTypes200ResponseEmbedded.fromJson(element);
      if (object is GetContractTypes200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetContractTypes200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetContractTypes200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetContractTypes200ResponseEmbedded>{},
        (Map<String, GetContractTypes200ResponseEmbedded> previousValue,
            element) {
      final GetContractTypes200ResponseEmbedded? object =
          GetContractTypes200ResponseEmbedded.fromJson(element.value);
      if (object is GetContractTypes200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetContractTypes200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetContractTypes200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetContractTypes200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetContractTypes200ResponseEmbedded>>(
          key, GetContractTypes200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetContractTypes200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
