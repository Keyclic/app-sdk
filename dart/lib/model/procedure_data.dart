part of keyclic_sdk_api.api;

class ProcedureDataTypeEnum {
  static const String eSignature_ = "e-signature";
  static const String signature_ = "signature";
}

class ProcedureData {
  ProcedureData({
    this.document,
    this.type,
  });

  factory ProcedureData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureData(
      document: json['document'],
      type: json['type'],
    );
  }

  String document;

  /// use ProcedureDataTypeEnum
  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureData &&
        runtimeType == other.runtimeType &&
        document == other.document &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= document?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

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
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'ProcedureData[document=$document, type=$type, ]';
  }
}
