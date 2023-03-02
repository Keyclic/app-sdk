//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SignerLinks {
  /// Returns a new [SignerLinks] instance.
  SignerLinks({
    this.procedure,
    this.self,
  });

  /// Returns a new [SignerLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SignerLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinks(
      procedure: SignerLinksProcedure.fromJson(json[r'procedure']),
      self: SignerLinksSelf.fromJson(json[r'self']),
    );
  }

  SignerLinksProcedure procedure;

  SignerLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinks &&
        other.procedure == procedure &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (procedure == null ? 0 : procedure.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<SignerLinks> listFromJson(List<dynamic> json) {
    return <SignerLinks>[
      if (json is List)
        for (dynamic value in json) SignerLinks.fromJson(value),
    ];
  }

  static Map<String, SignerLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, SignerLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SignerLinks-objects as value to a dart map
  static Map<String, List<SignerLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SignerLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignerLinks[procedure=$procedure, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (procedure != null) r'procedure': procedure,
      if (self != null) r'self': self,
    };
  }
}
