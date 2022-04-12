//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ProcedureLinksDocumentIriTemplate {
  /// Returns a new [ProcedureLinksDocumentIriTemplate] instance.
  ProcedureLinksDocumentIriTemplate({
    this.mapping,
  });

  /// Returns a new [ProcedureLinksDocumentIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ProcedureLinksDocumentIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksDocumentIriTemplate(
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

    return other is ProcedureLinksDocumentIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ProcedureLinksDocumentIriTemplate> listFromJson(
      List<dynamic> json) {
    return <ProcedureLinksDocumentIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ProcedureLinksDocumentIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ProcedureLinksDocumentIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ProcedureLinksDocumentIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ProcedureLinksDocumentIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ProcedureLinksDocumentIriTemplate-objects as value to a dart map
  static Map<String, List<ProcedureLinksDocumentIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ProcedureLinksDocumentIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
