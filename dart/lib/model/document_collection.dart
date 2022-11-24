//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentCollection {
  /// Returns a new [DocumentCollection] instance.
  DocumentCollection({
    this.items = const [],
  });

  /// Returns a new [DocumentCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentCollection(
      items: Document.listFromJson(json[r'items']),
    );
  }

  List<Document> items;

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

  static List<DocumentCollection> listFromJson(List<dynamic> json) {
    return <DocumentCollection>[
      if (json is List)
        for (dynamic value in json) DocumentCollection.fromJson(value),
    ];
  }

  static Map<String, DocumentCollection> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DocumentCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentCollection-objects as value to a dart map
  static Map<String, List<DocumentCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentCollection>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
