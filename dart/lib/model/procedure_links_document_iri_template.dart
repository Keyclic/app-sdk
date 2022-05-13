part of keyclic_sdk_api.api;

class ProcedureLinksDocumentIriTemplate {
  ProcedureLinksDocumentIriTemplate({
    this.mapping,
  });

  factory ProcedureLinksDocumentIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksDocumentIriTemplate(
      mapping: DocumentLinksFileIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  DocumentLinksFileIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinksDocumentIriTemplate &&
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

  static List<ProcedureLinksDocumentIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ProcedureLinksDocumentIriTemplate.fromJson(value))
            ?.toList() ??
        <ProcedureLinksDocumentIriTemplate>[];
  }

  static Map<String, ProcedureLinksDocumentIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ProcedureLinksDocumentIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ProcedureLinksDocumentIriTemplate.fromJson(value));
        }) ??
        <String, ProcedureLinksDocumentIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ProcedureLinksDocumentIriTemplate[mapping=$mapping, ]';
  }
}
