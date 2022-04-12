//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SignerLinksSelfIriTemplate {
  /// Returns a new [SignerLinksSelfIriTemplate] instance.
  SignerLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [SignerLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SignerLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinksSelfIriTemplate(
      mapping: SignerLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  SignerLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<SignerLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <SignerLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json) SignerLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, SignerLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, SignerLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SignerLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<SignerLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SignerLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignerLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
