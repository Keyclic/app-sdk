//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentLinksFileIriTemplate {
  /// Returns a new [DocumentLinksFileIriTemplate] instance.
  DocumentLinksFileIriTemplate({
    this.mapping,
  });

  /// Returns a new [DocumentLinksFileIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentLinksFileIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksFileIriTemplate(
      mapping: DocumentLinksFileIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  DocumentLinksFileIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksFileIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DocumentLinksFileIriTemplate> listFromJson(List<dynamic> json) {
    return <DocumentLinksFileIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          DocumentLinksFileIriTemplate.fromJson(value),
    ];
  }

  static Map<String, DocumentLinksFileIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DocumentLinksFileIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentLinksFileIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentLinksFileIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksFileIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentLinksFileIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentLinksFileIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentLinksFileIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
