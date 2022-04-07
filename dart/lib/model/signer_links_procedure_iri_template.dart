part of keyclic_sdk_api.api;

class SignerLinksProcedureIriTemplate {
  SignerLinksProcedureIriTemplate({
    this.mapping,
  });

  factory SignerLinksProcedureIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinksProcedureIriTemplate(
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

    return other is SignerLinksProcedureIriTemplate &&
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

  static List<SignerLinksProcedureIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                SignerLinksProcedureIriTemplate.fromJson(value))
            ?.toList() ??
        <SignerLinksProcedureIriTemplate>[];
  }

  static Map<String, SignerLinksProcedureIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, SignerLinksProcedureIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, SignerLinksProcedureIriTemplate.fromJson(value));
        }) ??
        <String, SignerLinksProcedureIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'SignerLinksProcedureIriTemplate[mapping=$mapping, ]';
  }
}
