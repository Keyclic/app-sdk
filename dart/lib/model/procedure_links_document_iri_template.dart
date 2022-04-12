//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinksDocumentIriTemplate {
  /// Returns a new [ProcedureLinksDocumentIriTemplate] instance.
  ProcedureLinksDocumentIriTemplate({
    this.mapping,
  });

  /// Returns a new [ProcedureLinksDocumentIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureLinksDocumentIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksDocumentIriTemplate(
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

    return other is ProcedureLinksDocumentIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ProcedureLinksDocumentIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinksDocumentIriTemplate>[];
    }
    return json
        .map((value) {
          return ProcedureLinksDocumentIriTemplate.fromJson(value);
        })
        .whereType<ProcedureLinksDocumentIriTemplate>()
        .toList();
  }

  static Map<String, ProcedureLinksDocumentIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksDocumentIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ProcedureLinksDocumentIriTemplate?>(
            key, ProcedureLinksDocumentIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ProcedureLinksDocumentIriTemplate>;
  }

  // maps a json object with a list of ProcedureLinksDocumentIriTemplate-objects as value to a dart map
  static Map<String, List<ProcedureLinksDocumentIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ProcedureLinksDocumentIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              ProcedureLinksDocumentIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ProcedureLinksDocumentIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
