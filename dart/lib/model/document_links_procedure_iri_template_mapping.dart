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
  static DocumentLinksProcedureIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
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
    return json
        .map((value) {
          return DocumentLinksProcedureIriTemplateMapping.fromJson(value);
        })
        .whereType<DocumentLinksProcedureIriTemplateMapping>()
        .toList();
  }

  static Map<String, DocumentLinksProcedureIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksProcedureIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentLinksProcedureIriTemplateMapping?>(
            key, DocumentLinksProcedureIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentLinksProcedureIriTemplateMapping>;
  }

  // maps a json object with a list of DocumentLinksProcedureIriTemplateMapping-objects as value to a dart map
  static Map<String, List<DocumentLinksProcedureIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<DocumentLinksProcedureIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentLinksProcedureIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentLinksProcedureIriTemplateMapping[procedure=$procedure]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (procedure != null) r'procedure': procedure,
    };
  }
}
