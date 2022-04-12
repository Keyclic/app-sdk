//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ContributionLinksContributorIriTemplateMapping {
  /// Returns a new [ContributionLinksContributorIriTemplateMapping] instance.
  ContributionLinksContributorIriTemplateMapping({
    this.person,
  });

  /// Returns a new [ContributionLinksContributorIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ContributionLinksContributorIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksContributorIriTemplateMapping(
      person: json[r'person'],
    );
  }

  String person;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksContributorIriTemplateMapping &&
        other.person == person;
  }

  @override
  int get hashCode => (person == null ? 0 : person.hashCode);

  static List<ContributionLinksContributorIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <ContributionLinksContributorIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          ContributionLinksContributorIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, ContributionLinksContributorIriTemplateMapping>
      mapFromJson(Map<String, dynamic> json) {
    return <String, ContributionLinksContributorIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ContributionLinksContributorIriTemplateMapping.fromJson(
              entry.value),
    };
  }

  // maps a json object with a list of ContributionLinksContributorIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ContributionLinksContributorIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<ContributionLinksContributorIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ContributionLinksContributorIriTemplateMapping.listFromJson(
                  entry.value),
    };
  }

  @override
  String toString() =>
      'ContributionLinksContributorIriTemplateMapping[person=$person]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (person != null) r'person': person,
    };
  }
}
