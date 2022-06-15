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
    return json
        .map((value) {
          return DocumentLinksProcedureIriTemplate.fromJson(value);
        })
        .whereType<DocumentLinksProcedureIriTemplate>()
        .toList();
  }

  static Map<String, DocumentLinksProcedureIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksProcedureIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentLinksProcedureIriTemplate?>(
            key, DocumentLinksProcedureIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentLinksProcedureIriTemplate>;
  }

  // maps a json object with a list of DocumentLinksProcedureIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksProcedureIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentLinksProcedureIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              DocumentLinksProcedureIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentLinksProcedureIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
