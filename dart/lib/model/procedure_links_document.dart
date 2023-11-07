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
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : ProcedureLinksDocumentIriTemplate.fromJson(json[r'iriTemplate']),
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

  static List<ProcedureLinksDocument> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinksDocument>[];
    }

    return json.fold(<ProcedureLinksDocument>[],
        (List<ProcedureLinksDocument> previousValue, element) {
      final ProcedureLinksDocument? object =
          ProcedureLinksDocument.fromJson(element);
      if (object is ProcedureLinksDocument) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProcedureLinksDocument> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksDocument>{};
    }

    return json.entries.fold(<String, ProcedureLinksDocument>{},
        (Map<String, ProcedureLinksDocument> previousValue, element) {
      final ProcedureLinksDocument? object =
          ProcedureLinksDocument.fromJson(element.value);
      if (object is ProcedureLinksDocument) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProcedureLinksDocument-objects as value to a dart map
  static Map<String, List<ProcedureLinksDocument>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProcedureLinksDocument>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProcedureLinksDocument>>(
          key, ProcedureLinksDocument.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ProcedureLinksDocument[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
