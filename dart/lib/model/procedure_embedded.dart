part of keyclic_sdk_api.api;

class ProcedureEmbedded {
  ProcedureEmbedded({
    this.document,
  });

  factory ProcedureEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureEmbedded(
      document: Document.fromJson(json['document']),
    );
  }

  Document document;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureEmbedded &&
        runtimeType == other.runtimeType &&
        document == other.document;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= document?.hashCode ?? 0;

    return hashCode;
  }

  static List<ProcedureEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ProcedureEmbedded.fromJson(value))
            ?.toList() ??
        <ProcedureEmbedded>[];
  }

  static Map<String, ProcedureEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ProcedureEmbedded>((String key, dynamic value) {
          return MapEntry(key, ProcedureEmbedded.fromJson(value));
        }) ??
        <String, ProcedureEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (document != null) 'document': document.toJson(),
    };
  }

  @override
  String toString() {
    return 'ProcedureEmbedded[document=$document, ]';
  }
}
