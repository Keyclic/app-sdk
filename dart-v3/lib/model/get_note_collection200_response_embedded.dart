//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetNoteCollection200ResponseEmbedded {
  /// Returns a new [GetNoteCollection200ResponseEmbedded] instance.
  GetNoteCollection200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetNoteCollection200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetNoteCollection200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetNoteCollection200ResponseEmbedded(
      item: NoteJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<NoteJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetNoteCollection200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetNoteCollection200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetNoteCollection200ResponseEmbedded>[];
    }

    return json.fold(<GetNoteCollection200ResponseEmbedded>[],
        (List<GetNoteCollection200ResponseEmbedded> previousValue, element) {
      final GetNoteCollection200ResponseEmbedded? object =
          GetNoteCollection200ResponseEmbedded.fromJson(element);
      if (object is GetNoteCollection200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetNoteCollection200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetNoteCollection200ResponseEmbedded>{};
    }

    return json.entries.fold(<String, GetNoteCollection200ResponseEmbedded>{},
        (Map<String, GetNoteCollection200ResponseEmbedded> previousValue,
            element) {
      final GetNoteCollection200ResponseEmbedded? object =
          GetNoteCollection200ResponseEmbedded.fromJson(element.value);
      if (object is GetNoteCollection200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetNoteCollection200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetNoteCollection200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetNoteCollection200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetNoteCollection200ResponseEmbedded>>(
          key, GetNoteCollection200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetNoteCollection200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
