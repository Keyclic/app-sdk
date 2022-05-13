part of keyclic_sdk_api.api;

class DocumentLinksProcedureIriTemplateMapping {
  DocumentLinksProcedureIriTemplateMapping({
    this.procedure,
  });

  factory DocumentLinksProcedureIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksProcedureIriTemplateMapping(
      procedure: json['procedure'],
    );
  }

  String procedure;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksProcedureIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        procedure == other.procedure;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= procedure?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentLinksProcedureIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DocumentLinksProcedureIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <DocumentLinksProcedureIriTemplateMapping>[];
  }

  static Map<String, DocumentLinksProcedureIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DocumentLinksProcedureIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, DocumentLinksProcedureIriTemplateMapping.fromJson(value));
        }) ??
        <String, DocumentLinksProcedureIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (procedure != null) 'procedure': procedure,
    };
  }

  @override
  String toString() {
    return 'DocumentLinksProcedureIriTemplateMapping[procedure=$procedure, ]';
  }
}
