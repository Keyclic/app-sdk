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
  static ProcedureLinksDocumentIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ProcedureLinksDocumentIriTemplate> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
