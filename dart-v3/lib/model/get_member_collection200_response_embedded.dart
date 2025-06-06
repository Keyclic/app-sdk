//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetMemberCollection200ResponseEmbedded {
  /// Returns a new [GetMemberCollection200ResponseEmbedded] instance.
  GetMemberCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetMemberCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetMemberCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetMemberCollection200ResponseEmbedded(
      item: MemberJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<MemberJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetMemberCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetMemberCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetMemberCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetMemberCollection200ResponseEmbedded>[],
        (List<GetMemberCollection200ResponseEmbedded> previousValue, element) {
      final GetMemberCollection200ResponseEmbedded? object =
          GetMemberCollection200ResponseEmbedded.fromJson(element);
      if (object is GetMemberCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetMemberCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetMemberCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetMemberCollection200ResponseEmbedded>{},
        (Map<String, GetMemberCollection200ResponseEmbedded> previousValue,
            element) {
      final GetMemberCollection200ResponseEmbedded? object =
          GetMemberCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetMemberCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetMemberCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetMemberCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetMemberCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetMemberCollection200ResponseEmbedded>>(
          key, GetMemberCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetMemberCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
