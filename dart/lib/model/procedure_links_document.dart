part of keyclic_sdk_api.api;

class ProcedureLinksDocument {
  ProcedureLinksDocument({
    this.href,
    this.iriTemplate,
  });

  factory ProcedureLinksDocument.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksDocument(
      href: json['href'],
      iriTemplate:
          ProcedureLinksDocumentIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the document associated to the given procedure. */
  String href;

  ProcedureLinksDocumentIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinksDocument &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<ProcedureLinksDocument> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ProcedureLinksDocument.fromJson(value))
            ?.toList() ??
        <ProcedureLinksDocument>[];
  }

  static Map<String, ProcedureLinksDocument> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ProcedureLinksDocument>((String key, dynamic value) {
          return MapEntry(key, ProcedureLinksDocument.fromJson(value));
        }) ??
        <String, ProcedureLinksDocument>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ProcedureLinksDocument[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
