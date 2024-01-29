//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketCollection200ResponseEmbedded {
  /// Returns a new [GetTicketCollection200ResponseEmbedded] instance.
  GetTicketCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetTicketCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketCollection200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetTicketCollection200ResponseEmbedded(
      item: TicketJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<TicketJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetTicketCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetTicketCollection200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetTicketCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetTicketCollection200ResponseEmbedded>[],
        (List<GetTicketCollection200ResponseEmbedded> previousValue, element) {
      final GetTicketCollection200ResponseEmbedded? object =
          GetTicketCollection200ResponseEmbedded.fromJson(element);
      if (object is GetTicketCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetTicketCollection200ResponseEmbedded>{},
        (Map<String, GetTicketCollection200ResponseEmbedded> previousValue,
            element) {
      final GetTicketCollection200ResponseEmbedded? object =
          GetTicketCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetTicketCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetTicketCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketCollection200ResponseEmbedded>>(
          key, GetTicketCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetTicketCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
