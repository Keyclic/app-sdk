//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksProcedureIriTemplate {
  /// Returns a new [DocumentLinksProcedureIriTemplate] instance.
  DocumentLinksProcedureIriTemplate({
    this.mapping,
  });

  /// Returns a new [DocumentLinksProcedureIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksProcedureIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksProcedureIriTemplate(
      mapping:
          DocumentLinksProcedureIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  DocumentLinksProcedureIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksProcedureIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DocumentLinksProcedureIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksProcedureIriTemplate>[];
    }

    return json.fold(<DocumentLinksProcedureIriTemplate>[],
        (List<DocumentLinksProcedureIriTemplate> previousValue, element) {
      final DocumentLinksProcedureIriTemplate? object =
          DocumentLinksProcedureIriTemplate.fromJson(element);
      if (object is DocumentLinksProcedureIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinksProcedureIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksProcedureIriTemplate>{};
    }

    return json.entries.fold(<String, DocumentLinksProcedureIriTemplate>{},
        (Map<String, DocumentLinksProcedureIriTemplate> previousValue,
            element) {
      final DocumentLinksProcedureIriTemplate? object =
          DocumentLinksProcedureIriTemplate.fromJson(element.value);
      if (object is DocumentLinksProcedureIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinksProcedureIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksProcedureIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinksProcedureIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinksProcedureIriTemplate>>(
          key, DocumentLinksProcedureIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentLinksProcedureIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
