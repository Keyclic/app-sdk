//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinksDocument {
  /// Returns a new [ProcedureLinksDocument] instance.
  ProcedureLinksDocument({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ProcedureLinksDocument] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureLinksDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksDocument(
      href: json[r'href'],
      iriTemplate:
          ProcedureLinksDocumentIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the document associated to the given procedure.
  String? href;

  ProcedureLinksDocumentIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinksDocument &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ProcedureLinksDocument> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinksDocument>[];
    }
    return json
        .map((value) {
          return ProcedureLinksDocument.fromJson(value);
        })
        .whereType<ProcedureLinksDocument>()
        .toList();
  }

  static Map<String, ProcedureLinksDocument> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksDocument>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ProcedureLinksDocument?>(
            key, ProcedureLinksDocument.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ProcedureLinksDocument>;
  }

  // maps a json object with a list of ProcedureLinksDocument-objects as value to a dart map
  static Map<String, List<ProcedureLinksDocument>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ProcedureLinksDocument>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ProcedureLinksDocument.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ProcedureLinksDocument[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
