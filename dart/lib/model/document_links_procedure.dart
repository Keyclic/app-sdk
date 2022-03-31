part of keyclic_sdk_api.api;

class DocumentLinksProcedure {
  DocumentLinksProcedure({
    this.href,
    this.iriTemplate,
  });

  factory DocumentLinksProcedure.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksProcedure(
      href: json['href'],
      iriTemplate:
          DocumentLinksProcedureIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the procedure associated to the given document. */
  String href;

  DocumentLinksProcedureIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksProcedure &&
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

  static List<DocumentLinksProcedure> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentLinksProcedure.fromJson(value))
            ?.toList() ??
        <DocumentLinksProcedure>[];
  }

  static Map<String, DocumentLinksProcedure> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, DocumentLinksProcedure>((String key, dynamic value) {
          return MapEntry(key, DocumentLinksProcedure.fromJson(value));
        }) ??
        <String, DocumentLinksProcedure>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentLinksProcedure[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
