//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinks {
  /// Returns a new [SignerLinks] instance.
  SignerLinks({
    this.self,
  });

  /// Returns a new [SignerLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerLinks(
      self: SignerLinksSelf.fromJson(json[r'self']),
    );
  }

  SignerLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinks && other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<SignerLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerLinks>[];
    }
    return json
        .map((value) {
          return SignerLinks.fromJson(value);
        })
        .whereType<SignerLinks>()
        .toList();
  }

  static Map<String, SignerLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, SignerLinks?>(key, SignerLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SignerLinks>;
  }

  // maps a json object with a list of SignerLinks-objects as value to a dart map
  static Map<String, List<SignerLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SignerLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: SignerLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignerLinks[self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
    };
  }
}
