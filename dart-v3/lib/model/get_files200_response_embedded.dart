//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetFiles200ResponseEmbedded {
  /// Returns a new [GetFiles200ResponseEmbedded] instance.
  GetFiles200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetFiles200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetFiles200ResponseEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetFiles200ResponseEmbedded(
      item: FileJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<FileJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetFiles200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetFiles200ResponseEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetFiles200ResponseEmbedded>[];
    }

    return json.fold(<GetFiles200ResponseEmbedded>[],
        (List<GetFiles200ResponseEmbedded> previousValue, element) {
      final GetFiles200ResponseEmbedded? object =
          GetFiles200ResponseEmbedded.fromJson(element);
      if (object is GetFiles200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetFiles200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetFiles200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetFiles200ResponseEmbedded>{},
        (Map<String, GetFiles200ResponseEmbedded> previousValue, element) {
      final GetFiles200ResponseEmbedded? object =
          GetFiles200ResponseEmbedded.fromJson(element.value);
      if (object is GetFiles200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetFiles200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetFiles200ResponseEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetFiles200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetFiles200ResponseEmbedded>>(
          key, GetFiles200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetFiles200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
