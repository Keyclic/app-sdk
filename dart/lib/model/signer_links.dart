part of keyclic_sdk_api.api;

class SignerLinks {
  SignerLinks({
    this.procedure,
    this.self,
  });

  factory SignerLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinks(
      procedure: SignerLinksProcedure.fromJson(json['procedure']),
      self: SignerLinksSelf.fromJson(json['self']),
    );
  }

  SignerLinksProcedure procedure;

  SignerLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinks &&
        runtimeType == other.runtimeType &&
        procedure == other.procedure &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= procedure?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignerLinks.fromJson(value))
            ?.toList() ??
        <SignerLinks>[];
  }

  static Map<String, SignerLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, SignerLinks>((String key, dynamic value) {
          return MapEntry(key, SignerLinks.fromJson(value));
        }) ??
        <String, SignerLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (procedure != null) 'procedure': procedure.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'SignerLinks[procedure=$procedure, self=$self, ]';
  }
}
