//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SignerLinksSelfIriTemplateMapping {
  /// Returns a new [SignerLinksSelfIriTemplateMapping] instance.
  SignerLinksSelfIriTemplateMapping({
    this.signer,
  });

  /// Returns a new [SignerLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SignerLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinksSelfIriTemplateMapping(
      signer: json[r'signer'],
    );
  }

  String signer;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksSelfIriTemplateMapping && other.signer == signer;
  }

  @override
  int get hashCode => (signer == null ? 0 : signer.hashCode);

  static List<SignerLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <SignerLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          SignerLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, SignerLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, SignerLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SignerLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<SignerLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SignerLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              SignerLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignerLinksSelfIriTemplateMapping[signer=$signer]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (signer != null) r'signer': signer,
    };
  }
}
