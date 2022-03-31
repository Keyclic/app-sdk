part of keyclic_sdk_api.api;

class ProcedureLinksSelfIriTemplate {
  ProcedureLinksSelfIriTemplate({
    this.mapping,
  });

  factory ProcedureLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksSelfIriTemplate(
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

    return other is ProcedureLinksSelfIriTemplate &&
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

  static List<ProcedureLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ProcedureLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <ProcedureLinksSelfIriTemplate>[];
  }

  static Map<String, ProcedureLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ProcedureLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, ProcedureLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, ProcedureLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ProcedureLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
