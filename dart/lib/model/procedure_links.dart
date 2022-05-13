part of keyclic_sdk_api.api;

class ProcedureLinks {
  ProcedureLinks({
    this.document,
    this.self,
  });

  factory ProcedureLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinks(
      document: ProcedureLinksDocument.fromJson(json['document']),
      self: ProcedureLinksSelf.fromJson(json['self']),
    );
  }

  ProcedureLinksDocument document;

  ProcedureLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinks &&
        runtimeType == other.runtimeType &&
        document == other.document &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= document?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<ProcedureLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ProcedureLinks.fromJson(value))
            ?.toList() ??
        <ProcedureLinks>[];
  }

  static Map<String, ProcedureLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ProcedureLinks>((String key, dynamic value) {
          return MapEntry(key, ProcedureLinks.fromJson(value));
        }) ??
        <String, ProcedureLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (document != null) 'document': document.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'ProcedureLinks[document=$document, self=$self, ]';
  }
}
