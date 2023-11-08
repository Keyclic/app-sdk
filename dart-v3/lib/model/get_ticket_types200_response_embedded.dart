//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketTypes200ResponseEmbedded {
  /// Returns a new [GetTicketTypes200ResponseEmbedded] instance.
  GetTicketTypes200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetTicketTypes200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketTypes200ResponseEmbedded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetTicketTypes200ResponseEmbedded(
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

    return other is GetTicketTypes200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetTicketTypes200ResponseEmbedded> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <GetTicketTypes200ResponseEmbedded>[];
    }

    return json.fold(<GetTicketTypes200ResponseEmbedded>[],
        (List<GetTicketTypes200ResponseEmbedded> previousValue, element) {
      final GetTicketTypes200ResponseEmbedded? object =
          GetTicketTypes200ResponseEmbedded.fromJson(element);
      if (object is GetTicketTypes200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketTypes200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketTypes200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetTicketTypes200ResponseEmbedded>{},
        (Map<String, GetTicketTypes200ResponseEmbedded> previousValue,
            element) {
      final GetTicketTypes200ResponseEmbedded? object =
          GetTicketTypes200ResponseEmbedded.fromJson(element.value);
      if (object is GetTicketTypes200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketTypes200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetTicketTypes200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketTypes200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketTypes200ResponseEmbedded>>(
          key, GetTicketTypes200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetTicketTypes200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
