//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionLinksContributorIriTemplate {
  /// Returns a new [ContributionLinksContributorIriTemplate] instance.
  ContributionLinksContributorIriTemplate({
    this.mapping,
  });

  /// Returns a new [ContributionLinksContributorIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionLinksContributorIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksContributorIriTemplate(
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

    return other is ContributionLinksContributorIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ContributionLinksContributorIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ContributionLinksContributorIriTemplate>[];
    }
    return json
        .map((value) {
          return ContributionLinksContributorIriTemplate.fromJson(value);
        })
        .whereType<ContributionLinksContributorIriTemplate>()
        .toList();
  }

  static Map<String, ContributionLinksContributorIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksContributorIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ContributionLinksContributorIriTemplate?>(
            key, ContributionLinksContributorIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ContributionLinksContributorIriTemplate>;
  }

  // maps a json object with a list of ContributionLinksContributorIriTemplate-objects as value to a dart map
  static Map<String, List<ContributionLinksContributorIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ContributionLinksContributorIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              ContributionLinksContributorIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ContributionLinksContributorIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
