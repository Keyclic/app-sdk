//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetContractTypeCollection200ResponseEmbedded {
  /// Returns a new [GetContractTypeCollection200ResponseEmbedded] instance.
  GetContractTypeCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetContractTypeCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetContractTypeCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetContractTypeCollection200ResponseEmbedded(
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

    return other is GetContractTypeCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetContractTypeCollection200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetContractTypeCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetContractTypeCollection200ResponseEmbedded>[],
        (List<GetContractTypeCollection200ResponseEmbedded> previousValue,
            element) {
      final GetContractTypeCollection200ResponseEmbedded? object =
          GetContractTypeCollection200ResponseEmbedded.fromJson(element);
      if (object is GetContractTypeCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetContractTypeCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetContractTypeCollection200ResponseEmbedded>{};
    }

    return json.entries
        .fold(<String, GetContractTypeCollection200ResponseEmbedded>{},
            (Map<String, GetContractTypeCollection200ResponseEmbedded>
                    previousValue,
                element) {
      final GetContractTypeCollection200ResponseEmbedded? object =
          GetContractTypeCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetContractTypeCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetContractTypeCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetContractTypeCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetContractTypeCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<GetContractTypeCollection200ResponseEmbedded>>(key,
          GetContractTypeCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetContractTypeCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
