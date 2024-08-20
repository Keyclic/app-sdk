//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketDocumentTypes200ResponseEmbedded {
  /// Returns a new [GetTicketDocumentTypes200ResponseEmbedded] instance.
  GetTicketDocumentTypes200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetTicketDocumentTypes200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketDocumentTypes200ResponseEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetTicketDocumentTypes200ResponseEmbedded(
      item: DocumentTypeJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<DocumentTypeJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetTicketDocumentTypes200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetTicketDocumentTypes200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetTicketDocumentTypes200ResponseEmbedded>[];
    }

    return json.fold(<GetTicketDocumentTypes200ResponseEmbedded>[],
        (List<GetTicketDocumentTypes200ResponseEmbedded> previousValue,
            element) {
      final GetTicketDocumentTypes200ResponseEmbedded? object =
          GetTicketDocumentTypes200ResponseEmbedded.fromJson(element);
      if (object is GetTicketDocumentTypes200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketDocumentTypes200ResponseEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketDocumentTypes200ResponseEmbedded>{};
    }

    return json.entries.fold(
        <String, GetTicketDocumentTypes200ResponseEmbedded>{},
        (Map<String, GetTicketDocumentTypes200ResponseEmbedded> previousValue,
            element) {
      final GetTicketDocumentTypes200ResponseEmbedded? object =
          GetTicketDocumentTypes200ResponseEmbedded.fromJson(element.value);
      if (object is GetTicketDocumentTypes200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketDocumentTypes200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetTicketDocumentTypes200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketDocumentTypes200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetTicketDocumentTypes200ResponseEmbedded>>(
          key, GetTicketDocumentTypes200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'GetTicketDocumentTypes200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
