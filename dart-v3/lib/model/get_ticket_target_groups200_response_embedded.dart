//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketTargetGroups200ResponseEmbedded {
  /// Returns a new [GetTicketTargetGroups200ResponseEmbedded] instance.
  GetTicketTargetGroups200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetTicketTargetGroups200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketTargetGroups200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetTicketTargetGroups200ResponseEmbedded(
      item: TargetGroupJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<TargetGroupJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetTicketTargetGroups200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetTicketTargetGroups200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetTicketTargetGroups200ResponseEmbedded>[];
    }

    return json.fold(<GetTicketTargetGroups200ResponseEmbedded>[],
        (List<GetTicketTargetGroups200ResponseEmbedded> previousValue,
            element) {
      final GetTicketTargetGroups200ResponseEmbedded? object =
          GetTicketTargetGroups200ResponseEmbedded.fromJson(element);
      if (object is GetTicketTargetGroups200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketTargetGroups200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketTargetGroups200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetTicketTargetGroups200ResponseEmbedded>{},
        (Map<String, GetTicketTargetGroups200ResponseEmbedded> previousValue,
            element) {
      final GetTicketTargetGroups200ResponseEmbedded? object =
          GetTicketTargetGroups200ResponseEmbedded.fromJson(element.value);
      if (object is GetTicketTargetGroups200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketTargetGroups200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetTicketTargetGroups200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketTargetGroups200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketTargetGroups200ResponseEmbedded>>(
          key, GetTicketTargetGroups200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetTicketTargetGroups200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
