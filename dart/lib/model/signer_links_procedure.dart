part of keyclic_sdk_api.api;

class SignerLinksProcedure {
  SignerLinksProcedure({
    this.href,
    this.iriTemplate,
  });

  factory SignerLinksProcedure.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinksProcedure(
      href: json['href'],
      iriTemplate:
          SignerLinksProcedureIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the procedure associated to the given signer. */
  String href;

  SignerLinksProcedureIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksProcedure &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerLinksProcedure> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignerLinksProcedure.fromJson(value))
            ?.toList() ??
        <SignerLinksProcedure>[];
  }

  static Map<String, SignerLinksProcedure> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, SignerLinksProcedure>((String key, dynamic value) {
          return MapEntry(key, SignerLinksProcedure.fromJson(value));
        }) ??
        <String, SignerLinksProcedure>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'SignerLinksProcedure[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
