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
      mapping: json[r'mapping'] is! Map
          ? null
          : ContributionLinksContributorIriTemplateMapping.fromJson(
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

    return json.fold(<ContributionLinksContributorIriTemplate>[],
        (List<ContributionLinksContributorIriTemplate> previousValue, element) {
      final ContributionLinksContributorIriTemplate? object =
          ContributionLinksContributorIriTemplate.fromJson(element);
      if (object is ContributionLinksContributorIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionLinksContributorIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksContributorIriTemplate>{};
    }

    return json.entries
        .fold(<String, ContributionLinksContributorIriTemplate>{},
            (Map<String, ContributionLinksContributorIriTemplate> previousValue,
                element) {
      final ContributionLinksContributorIriTemplate? object =
          ContributionLinksContributorIriTemplate.fromJson(element.value);
      if (object is ContributionLinksContributorIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionLinksContributorIriTemplate-objects as value to a dart map
  static Map<String, List<ContributionLinksContributorIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionLinksContributorIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContributionLinksContributorIriTemplate>>(
          key, ContributionLinksContributorIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContributionLinksContributorIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
