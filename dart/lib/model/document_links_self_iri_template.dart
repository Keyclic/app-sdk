//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentLinksSelfIriTemplate {
  /// Returns a new [DocumentLinksSelfIriTemplate] instance.
  DocumentLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [DocumentLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksSelfIriTemplate(
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

    return other is DocumentLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DocumentLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <DocumentLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          DocumentLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, DocumentLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DocumentLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
