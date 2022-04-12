//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationLinksSelfIriTemplate {
  /// Returns a new [InvitationLinksSelfIriTemplate] instance.
  InvitationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [InvitationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksSelfIriTemplate(
      mapping: InvitationLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  InvitationLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<InvitationLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <InvitationLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return InvitationLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<InvitationLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, InvitationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InvitationLinksSelfIriTemplate?>(
            key, InvitationLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InvitationLinksSelfIriTemplate>;
  }

  // maps a json object with a list of InvitationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<InvitationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<InvitationLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InvitationLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'InvitationLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
