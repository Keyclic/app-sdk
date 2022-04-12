//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentPaginationAllOf {
  /// Returns a new [DocumentPaginationAllOf] instance.
  DocumentPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [DocumentPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentPaginationAllOf(
      embedded: DocumentCollection.fromJson(json[r'_embedded']),
    );
  }

  DocumentCollection embedded;

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

  static List<DocumentPaginationAllOf> listFromJson(List<dynamic> json) {
    return <DocumentPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) DocumentPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, DocumentPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DocumentPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentPaginationAllOf-objects as value to a dart map
  static Map<String, List<DocumentPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
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
