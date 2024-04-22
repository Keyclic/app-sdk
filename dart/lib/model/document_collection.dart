//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentCollection {
  /// Returns a new [DocumentCollection] instance.
  DocumentCollection({
    this.items,
  });

  /// Returns a new [DocumentCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DocumentCollection(
      items: Document.listFromJson(json[r'items']),
    );
  }

  List<Document>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<DocumentCollection> listFromJson(Iterable? json) {
    if (json == null) {
      return <DocumentCollection>[];
    }

    return json.fold(<DocumentCollection>[],
        (List<DocumentCollection> previousValue, element) {
      final DocumentCollection? object = DocumentCollection.fromJson(element);
      if (object is DocumentCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentCollection>{};
    }

    return json.entries.fold(<String, DocumentCollection>{},
        (Map<String, DocumentCollection> previousValue, element) {
      final DocumentCollection? object =
          DocumentCollection.fromJson(element.value);
      if (object is DocumentCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentCollection-objects as value to a dart map
  static Map<String, List<DocumentCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentCollection>>(
          key, DocumentCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
