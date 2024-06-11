//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketTypeCollection200ResponseEmbedded {
  /// Returns a new [GetTicketTypeCollection200ResponseEmbedded] instance.
  GetTicketTypeCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetTicketTypeCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketTypeCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetTicketTypeCollection200ResponseEmbedded(
      item: TicketTypeJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<TicketTypeJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetTicketTypeCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetTicketTypeCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetTicketTypeCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetTicketTypeCollection200ResponseEmbedded>[],
        (List<GetTicketTypeCollection200ResponseEmbedded> previousValue,
            element) {
      final GetTicketTypeCollection200ResponseEmbedded? object =
          GetTicketTypeCollection200ResponseEmbedded.fromJson(element);
      if (object is GetTicketTypeCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketTypeCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketTypeCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetTicketTypeCollection200ResponseEmbedded>{},
        (Map<String, GetTicketTypeCollection200ResponseEmbedded> previousValue,
            element) {
      final GetTicketTypeCollection200ResponseEmbedded? object =
          GetTicketTypeCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetTicketTypeCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketTypeCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetTicketTypeCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketTypeCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketTypeCollection200ResponseEmbedded>>(
          key, GetTicketTypeCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetTicketTypeCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
