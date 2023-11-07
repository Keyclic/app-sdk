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
      mapping: json[r'mapping'] is! Map
          ? null
          : DocumentLinksFileIriTemplateMapping.fromJson(json[r'mapping']),
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

    return json.fold(<DocumentLinksSelfIriTemplate>[],
        (List<DocumentLinksSelfIriTemplate> previousValue, element) {
      final DocumentLinksSelfIriTemplate? object =
          DocumentLinksSelfIriTemplate.fromJson(element);
      if (object is DocumentLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, DocumentLinksSelfIriTemplate>{},
        (Map<String, DocumentLinksSelfIriTemplate> previousValue, element) {
      final DocumentLinksSelfIriTemplate? object =
          DocumentLinksSelfIriTemplate.fromJson(element.value);
      if (object is DocumentLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinksSelfIriTemplate>>(
          key, DocumentLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
