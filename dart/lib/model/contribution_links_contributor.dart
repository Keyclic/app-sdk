//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionLinksContributor {
  /// Returns a new [ContributionLinksContributor] instance.
  ContributionLinksContributor({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ContributionLinksContributor] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionLinksContributor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksContributor(
      href: json[r'href'],
      iriTemplate: ContributionLinksContributorIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the contributor associated to the given contribution.
  String? href;

  ContributionLinksContributorIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksContributor &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ContributionLinksContributor> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContributionLinksContributor>[];
    }
    return json
        .map((value) {
          return ContributionLinksContributor.fromJson(value);
        })
        .whereType<ContributionLinksContributor>()
        .toList();
  }

  static Map<String, ContributionLinksContributor> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksContributor>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ContributionLinksContributor?>(
            key, ContributionLinksContributor.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ContributionLinksContributor>;
  }

  // maps a json object with a list of ContributionLinksContributor-objects as value to a dart map
  static Map<String, List<ContributionLinksContributor>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ContributionLinksContributor>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ContributionLinksContributor.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ContributionLinksContributor[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
