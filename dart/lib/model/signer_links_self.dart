//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SignerLinksSelf {
  /// Returns a new [SignerLinksSelf] instance.
  SignerLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [SignerLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SignerLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinksSelf(
      href: json[r'href'],
      iriTemplate: SignerLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given signer.
  String href;

  SignerLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<SignerLinksSelf> listFromJson(List<dynamic> json) {
    return <SignerLinksSelf>[
      if (json is List)
        for (dynamic value in json) SignerLinksSelf.fromJson(value),
    ];
  }

  static Map<String, SignerLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, SignerLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SignerLinksSelf-objects as value to a dart map
  static Map<String, List<SignerLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SignerLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignerLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
