//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonLinksSelfIriTemplate {
  /// Returns a new [PersonLinksSelfIriTemplate] instance.
  PersonLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [PersonLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonLinksSelfIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

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

  static List<PersonLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return PersonLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<PersonLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, PersonLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PersonLinksSelfIriTemplate?>(
            key, PersonLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PersonLinksSelfIriTemplate>;
  }

  // maps a json object with a list of PersonLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<PersonLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PersonLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
