//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTickets200ResponseEmbedded {
  /// Returns a new [GetTickets200ResponseEmbedded] instance.
  GetTickets200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetTickets200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTickets200ResponseEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetTickets200ResponseEmbedded(
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

    return other is GetTickets200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetTickets200ResponseEmbedded> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <GetTickets200ResponseEmbedded>[];
    }

    return json.fold(<GetTickets200ResponseEmbedded>[],
        (List<GetTickets200ResponseEmbedded> previousValue, element) {
      final GetTickets200ResponseEmbedded? object =
          GetTickets200ResponseEmbedded.fromJson(element);
      if (object is GetTickets200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTickets200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTickets200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetTickets200ResponseEmbedded>{},
        (Map<String, GetTickets200ResponseEmbedded> previousValue, element) {
      final GetTickets200ResponseEmbedded? object =
          GetTickets200ResponseEmbedded.fromJson(element.value);
      if (object is GetTickets200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTickets200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetTickets200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTickets200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTickets200ResponseEmbedded>>(
          key, GetTickets200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetTickets200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
