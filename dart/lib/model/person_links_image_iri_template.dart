//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonLinksImageIriTemplate {
  /// Returns a new [PersonLinksImageIriTemplate] instance.
  PersonLinksImageIriTemplate({
    this.mapping,
  });

  /// Returns a new [PersonLinksImageIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonLinksImageIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonLinksImageIriTemplate(
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

    return other is PersonLinksImageIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PersonLinksImageIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonLinksImageIriTemplate>[];
    }
    return json
        .map((value) {
          return PersonLinksImageIriTemplate.fromJson(value);
        })
        .whereType<PersonLinksImageIriTemplate>()
        .toList();
  }

  static Map<String, PersonLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonLinksImageIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PersonLinksImageIriTemplate?>(
            key, PersonLinksImageIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PersonLinksImageIriTemplate>;
  }

  // maps a json object with a list of PersonLinksImageIriTemplate-objects as value to a dart map
  static Map<String, List<PersonLinksImageIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PersonLinksImageIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PersonLinksImageIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PersonLinksImageIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
