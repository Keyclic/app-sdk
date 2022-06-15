//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksSelfIriTemplate {
  /// Returns a new [DocumentLinksSelfIriTemplate] instance.
  DocumentLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [DocumentLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksSelfIriTemplate(
      mapping: DocumentLinksFileIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  DocumentLinksFileIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DocumentLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return DocumentLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<DocumentLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, DocumentLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentLinksSelfIriTemplate?>(
            key, DocumentLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentLinksSelfIriTemplate>;
  }

  // maps a json object with a list of DocumentLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
