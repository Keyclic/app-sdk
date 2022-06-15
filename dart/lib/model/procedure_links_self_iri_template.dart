//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinksSelfIriTemplate {
  /// Returns a new [ProcedureLinksSelfIriTemplate] instance.
  ProcedureLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ProcedureLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksSelfIriTemplate(
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

    return other is ProcedureLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ProcedureLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return ProcedureLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<ProcedureLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, ProcedureLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ProcedureLinksSelfIriTemplate?>(
            key, ProcedureLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ProcedureLinksSelfIriTemplate>;
  }

  // maps a json object with a list of ProcedureLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ProcedureLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ProcedureLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ProcedureLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ProcedureLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
