part of keyclic_sdk_api.api;

class SignerData {
  SignerData({
    this.document,
    this.procedure,
    this.member,
  });

  factory SignerData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerData(
      document: json['document'],
      procedure: json['procedure'],
      member: json['member'],
    );
  }

  String document;

  String procedure;

  String member;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerData &&
        runtimeType == other.runtimeType &&
        document == other.document &&
        procedure == other.procedure &&
        member == other.member;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= document?.hashCode ?? 0;
    hashCode ^= procedure?.hashCode ?? 0;
    hashCode ^= member?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => SignerData.fromJson(value))?.toList() ??
        <SignerData>[];
  }

  static Map<String, SignerData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, SignerData>((String key, dynamic value) {
          return MapEntry(key, SignerData.fromJson(value));
        }) ??
        <String, SignerData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (document != null) 'document': document,
      if (procedure != null) 'procedure': procedure,
      if (member != null) 'member': member,
    };
  }

  @override
  String toString() {
    return 'SignerData[document=$document, procedure=$procedure, member=$member, ]';
  }
}
