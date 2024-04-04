//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetBusinessHoursCollection200ResponseEmbedded {
  /// Returns a new [GetBusinessHoursCollection200ResponseEmbedded] instance.
  GetBusinessHoursCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetBusinessHoursCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetBusinessHoursCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetBusinessHoursCollection200ResponseEmbedded(
      item: BusinessHoursJsonhalBusinessHoursRead.listFromJson(json[r'item']),
    );
  }

  List<BusinessHoursJsonhalBusinessHoursRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetBusinessHoursCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetBusinessHoursCollection200ResponseEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetBusinessHoursCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetBusinessHoursCollection200ResponseEmbedded>[],
        (List<GetBusinessHoursCollection200ResponseEmbedded> previousValue,
            element) {
      final GetBusinessHoursCollection200ResponseEmbedded? object =
          GetBusinessHoursCollection200ResponseEmbedded.fromJson(element);
      if (object is GetBusinessHoursCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetBusinessHoursCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetBusinessHoursCollection200ResponseEmbedded>{};
    }

    return json.entries
        .fold(<String, GetBusinessHoursCollection200ResponseEmbedded>{},
            (Map<String, GetBusinessHoursCollection200ResponseEmbedded>
                    previousValue,
                element) {
      final GetBusinessHoursCollection200ResponseEmbedded? object =
          GetBusinessHoursCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetBusinessHoursCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetBusinessHoursCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetBusinessHoursCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetBusinessHoursCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<GetBusinessHoursCollection200ResponseEmbedded>>(key,
          GetBusinessHoursCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetBusinessHoursCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
