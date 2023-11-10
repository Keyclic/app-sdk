//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksFileIriTemplate {
  /// Returns a new [DocumentLinksFileIriTemplate] instance.
  DocumentLinksFileIriTemplate({
    this.mapping,
  });

  /// Returns a new [DocumentLinksFileIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksFileIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksFileIriTemplate(
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

    return other is DocumentLinksFileIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DocumentLinksFileIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksFileIriTemplate>[];
    }

    return json.fold(<DocumentLinksFileIriTemplate>[],
        (List<DocumentLinksFileIriTemplate> previousValue, element) {
      final DocumentLinksFileIriTemplate? object =
          DocumentLinksFileIriTemplate.fromJson(element);
      if (object is DocumentLinksFileIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinksFileIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksFileIriTemplate>{};
    }

    return json.entries.fold(<String, DocumentLinksFileIriTemplate>{},
        (Map<String, DocumentLinksFileIriTemplate> previousValue, element) {
      final DocumentLinksFileIriTemplate? object =
          DocumentLinksFileIriTemplate.fromJson(element.value);
      if (object is DocumentLinksFileIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinksFileIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksFileIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinksFileIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinksFileIriTemplate>>(
          key, DocumentLinksFileIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentLinksFileIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
