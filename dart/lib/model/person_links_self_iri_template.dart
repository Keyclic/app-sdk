//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonLinksSelfIriTemplate {
  /// Returns a new [PersonLinksSelfIriTemplate] instance.
  PersonLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [PersonLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PersonLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksSelfIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PersonLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <PersonLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json) PersonLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, PersonLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PersonLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PersonLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<PersonLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PersonLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PersonLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
