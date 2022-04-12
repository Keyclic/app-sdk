//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentPaginationAllOf {
  /// Returns a new [DocumentPaginationAllOf] instance.
  DocumentPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [DocumentPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentPaginationAllOf(
      embedded: DocumentCollection.fromJson(json[r'_embedded']),
    );
  }

  DocumentCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<DocumentPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentPaginationAllOf>[];
    }
    return json
        .map((value) {
          return DocumentPaginationAllOf.fromJson(value);
        })
        .whereType<DocumentPaginationAllOf>()
        .toList();
  }

  static Map<String, DocumentPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentPaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentPaginationAllOf?>(
            key, DocumentPaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentPaginationAllOf>;
  }

  // maps a json object with a list of DocumentPaginationAllOf-objects as value to a dart map
  static Map<String, List<DocumentPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentPaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
