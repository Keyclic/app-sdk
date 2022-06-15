//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionLinksContributorIriTemplateMapping {
  /// Returns a new [ContributionLinksContributorIriTemplateMapping] instance.
  ContributionLinksContributorIriTemplateMapping({
    this.person,
  });

  /// Returns a new [ContributionLinksContributorIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionLinksContributorIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksContributorIriTemplateMapping(
      person: json[r'person'],
    );
  }

  String? person;

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
      List<dynamic>? json) {
    if (json == null) {
      return <ContributionLinksContributorIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return ContributionLinksContributorIriTemplateMapping.fromJson(value);
        })
        .whereType<ContributionLinksContributorIriTemplateMapping>()
        .toList();
  }

  static Map<String, ContributionLinksContributorIriTemplateMapping>
      mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksContributorIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ContributionLinksContributorIriTemplateMapping?>(key,
            ContributionLinksContributorIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ContributionLinksContributorIriTemplateMapping>;
  }

  // maps a json object with a list of ContributionLinksContributorIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ContributionLinksContributorIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ContributionLinksContributorIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
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
