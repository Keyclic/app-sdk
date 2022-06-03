part of keyclic_sdk_api.api;

class ProcedureDataModeEnum {
  static const String remote_ = "remote";
  static const String onSite_ = "on_site";
}

class ProcedureDataTypeEnum {
  static const String eSignature_ = "e-signature";
  static const String signature_ = "signature";
}

class ProcedureData {
  ProcedureData({
    this.document,
    this.mode,
    this.type,
  });

  factory ProcedureData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureData(
      document: json['document'],
      mode: json['mode'],
      type: json['type'],
    );
  }

  String document;

  /// use ProcedureDataModeEnum
  String mode;

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
        mode == other.mode &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= document?.hashCode ?? 0;
    hashCode ^= mode?.hashCode ?? 0;
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
      if (mode != null) 'mode': mode,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'ProcedureData[document=$document, mode=$mode, type=$type, ]';
  }
}
