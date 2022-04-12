//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksProcedureIriTemplate {
  /// Returns a new [SignerLinksProcedureIriTemplate] instance.
  SignerLinksProcedureIriTemplate({
    this.mapping,
  });

  /// Returns a new [SignerLinksProcedureIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksProcedureIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerLinksProcedureIriTemplate(
      mapping:
          DocumentLinksProcedureIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  DocumentLinksProcedureIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksProcedureIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<SignerLinksProcedureIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <SignerLinksProcedureIriTemplate>[];
    }
    return json
        .map((value) {
          return SignerLinksProcedureIriTemplate.fromJson(value);
        })
        .whereType<SignerLinksProcedureIriTemplate>()
        .toList();
  }

  static Map<String, SignerLinksProcedureIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksProcedureIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, SignerLinksProcedureIriTemplate?>(
            key, SignerLinksProcedureIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SignerLinksProcedureIriTemplate>;
  }

  // maps a json object with a list of SignerLinksProcedureIriTemplate-objects as value to a dart map
  static Map<String, List<SignerLinksProcedureIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SignerLinksProcedureIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: SignerLinksProcedureIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignerLinksProcedureIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
