//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketMetrics200ResponseEmbedded {
  /// Returns a new [GetTicketMetrics200ResponseEmbedded] instance.
  GetTicketMetrics200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetTicketMetrics200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketMetrics200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetTicketMetrics200ResponseEmbedded(
      item: MetricJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<MetricJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetTicketMetrics200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetTicketMetrics200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetTicketMetrics200ResponseEmbedded>[];
    }

    return json.fold(<GetTicketMetrics200ResponseEmbedded>[],
        (List<GetTicketMetrics200ResponseEmbedded> previousValue, element) {
      final GetTicketMetrics200ResponseEmbedded? object =
          GetTicketMetrics200ResponseEmbedded.fromJson(element);
      if (object is GetTicketMetrics200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketMetrics200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketMetrics200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetTicketMetrics200ResponseEmbedded>{},
        (Map<String, GetTicketMetrics200ResponseEmbedded> previousValue,
            element) {
      final GetTicketMetrics200ResponseEmbedded? object =
          GetTicketMetrics200ResponseEmbedded.fromJson(element.value);
      if (object is GetTicketMetrics200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketMetrics200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetTicketMetrics200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketMetrics200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketMetrics200ResponseEmbedded>>(
          key, GetTicketMetrics200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetTicketMetrics200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
