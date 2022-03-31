part of keyclic_sdk_api.api;

class ProcedureData {
  ProcedureData({
    this.document,
  });

  factory ProcedureData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureData(
      document: json['document'],
    );
  }

  String document;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureData &&
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

  static List<ProcedureData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ProcedureData.fromJson(value))
            ?.toList() ??
        <ProcedureData>[];
  }

  static Map<String, ProcedureData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ProcedureData>((String key, dynamic value) {
          return MapEntry(key, ProcedureData.fromJson(value));
        }) ??
        <String, ProcedureData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (document != null) 'document': document,
    };
  }

  @override
  String toString() {
    return 'ProcedureData[document=$document, ]';
  }
}
