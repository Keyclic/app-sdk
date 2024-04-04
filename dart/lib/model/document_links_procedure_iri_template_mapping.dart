//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksProcedureIriTemplateMapping {
  /// Returns a new [DocumentLinksProcedureIriTemplateMapping] instance.
  DocumentLinksProcedureIriTemplateMapping({
    this.procedure,
  });

  /// Returns a new [DocumentLinksProcedureIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksProcedureIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DocumentLinksProcedureIriTemplateMapping(
      procedure: json[r'procedure'],
    );
  }

  String? procedure;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksProcedureIriTemplateMapping &&
        other.procedure == procedure;
  }

  @override
  int get hashCode => (procedure == null ? 0 : procedure.hashCode);

  static List<DocumentLinksProcedureIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksProcedureIriTemplateMapping>[];
    }

    return json.fold(<DocumentLinksProcedureIriTemplateMapping>[],
        (List<DocumentLinksProcedureIriTemplateMapping> previousValue,
            element) {
      final DocumentLinksProcedureIriTemplateMapping? object =
          DocumentLinksProcedureIriTemplateMapping.fromJson(element);
      if (object is DocumentLinksProcedureIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinksProcedureIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksProcedureIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, DocumentLinksProcedureIriTemplateMapping>{},
        (Map<String, DocumentLinksProcedureIriTemplateMapping> previousValue,
            element) {
      final DocumentLinksProcedureIriTemplateMapping? object =
          DocumentLinksProcedureIriTemplateMapping.fromJson(element.value);
      if (object is DocumentLinksProcedureIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinksProcedureIriTemplateMapping-objects as value to a dart map
  static Map<String, List<DocumentLinksProcedureIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinksProcedureIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinksProcedureIriTemplateMapping>>(
          key, DocumentLinksProcedureIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentLinksProcedureIriTemplateMapping[procedure=$procedure]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'procedure')) r'procedure': procedure,
    };
  }
}
