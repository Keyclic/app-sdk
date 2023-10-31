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

    return json.fold(<DocumentPaginationAllOf>[],
        (List<DocumentPaginationAllOf> previousValue, element) {
      final DocumentPaginationAllOf? object =
          DocumentPaginationAllOf.fromJson(element);
      if (object is DocumentPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentPaginationAllOf>{};
    }

    return json.entries.fold(<String, DocumentPaginationAllOf>{},
        (Map<String, DocumentPaginationAllOf> previousValue, element) {
      final DocumentPaginationAllOf? object =
          DocumentPaginationAllOf.fromJson(element.value);
      if (object is DocumentPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentPaginationAllOf-objects as value to a dart map
  static Map<String, List<DocumentPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentPaginationAllOf>>(
          key, DocumentPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
