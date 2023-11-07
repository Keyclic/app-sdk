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

    return json.fold(<ProcedureLinksDocumentIriTemplate>[],
        (List<ProcedureLinksDocumentIriTemplate> previousValue, element) {
      final ProcedureLinksDocumentIriTemplate? object =
          ProcedureLinksDocumentIriTemplate.fromJson(element);
      if (object is ProcedureLinksDocumentIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProcedureLinksDocumentIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksDocumentIriTemplate>{};
    }

    return json.entries.fold(<String, ProcedureLinksDocumentIriTemplate>{},
        (Map<String, ProcedureLinksDocumentIriTemplate> previousValue,
            element) {
      final ProcedureLinksDocumentIriTemplate? object =
          ProcedureLinksDocumentIriTemplate.fromJson(element.value);
      if (object is ProcedureLinksDocumentIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProcedureLinksDocumentIriTemplate-objects as value to a dart map
  static Map<String, List<ProcedureLinksDocumentIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProcedureLinksDocumentIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProcedureLinksDocumentIriTemplate>>(
          key, ProcedureLinksDocumentIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ProcedureLinksDocumentIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
