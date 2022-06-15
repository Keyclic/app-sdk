//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksSelfIriTemplate {
  /// Returns a new [SignerLinksSelfIriTemplate] instance.
  SignerLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [SignerLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerLinksSelfIriTemplate(
      mapping: SignerLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  SignerLinksSelfIriTemplateMapping? mapping;

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

  static List<SignerLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return SignerLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<SignerLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, SignerLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, SignerLinksSelfIriTemplate?>(
            key, SignerLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SignerLinksSelfIriTemplate>;
  }

  // maps a json object with a list of SignerLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<SignerLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SignerLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
