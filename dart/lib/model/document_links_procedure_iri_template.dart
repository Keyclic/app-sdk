part of keyclic_sdk_api.api;

class DocumentLinksProcedureIriTemplate {
  DocumentLinksProcedureIriTemplate({
    this.mapping,
  });

  factory DocumentLinksProcedureIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksProcedureIriTemplate(
      mapping:
          DocumentLinksProcedureIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  DocumentLinksProcedureIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksProcedureIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentLinksProcedureIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DocumentLinksProcedureIriTemplate.fromJson(value))
            ?.toList() ??
        <DocumentLinksProcedureIriTemplate>[];
  }

  static Map<String, DocumentLinksProcedureIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DocumentLinksProcedureIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, DocumentLinksProcedureIriTemplate.fromJson(value));
        }) ??
        <String, DocumentLinksProcedureIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentLinksProcedureIriTemplate[mapping=$mapping, ]';
  }
}
