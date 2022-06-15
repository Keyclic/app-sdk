//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksFileIriTemplateMapping {
  /// Returns a new [DocumentLinksFileIriTemplateMapping] instance.
  DocumentLinksFileIriTemplateMapping({
    this.document,
  });

  /// Returns a new [DocumentLinksFileIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksFileIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksFileIriTemplateMapping(
      document: json[r'document'],
    );
  }

  String? document;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksFileIriTemplateMapping &&
        other.document == document;
  }

  @override
  int get hashCode => (document == null ? 0 : document.hashCode);

  static List<DocumentLinksFileIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksFileIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return DocumentLinksFileIriTemplateMapping.fromJson(value);
        })
        .whereType<DocumentLinksFileIriTemplateMapping>()
        .toList();
  }

  static Map<String, DocumentLinksFileIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksFileIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentLinksFileIriTemplateMapping?>(
            key, DocumentLinksFileIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentLinksFileIriTemplateMapping>;
  }

  // maps a json object with a list of DocumentLinksFileIriTemplateMapping-objects as value to a dart map
  static Map<String, List<DocumentLinksFileIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentLinksFileIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              DocumentLinksFileIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentLinksFileIriTemplateMapping[document=$document]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (document != null) r'document': document,
    };
  }
}
