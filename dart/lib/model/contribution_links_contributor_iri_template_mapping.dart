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

    return json.fold(<ContributionLinksContributorIriTemplateMapping>[],
        (List<ContributionLinksContributorIriTemplateMapping> previousValue,
            element) {
      final ContributionLinksContributorIriTemplateMapping? object =
          ContributionLinksContributorIriTemplateMapping.fromJson(element);
      if (object is ContributionLinksContributorIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionLinksContributorIriTemplateMapping>
      mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksContributorIriTemplateMapping>{};
    }

    return json.entries
        .fold(<String, ContributionLinksContributorIriTemplateMapping>{},
            (Map<String, ContributionLinksContributorIriTemplateMapping>
                    previousValue,
                element) {
      final ContributionLinksContributorIriTemplateMapping? object =
          ContributionLinksContributorIriTemplateMapping.fromJson(
              element.value);
      if (object is ContributionLinksContributorIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionLinksContributorIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ContributionLinksContributorIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionLinksContributorIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<ContributionLinksContributorIriTemplateMapping>>(key,
          ContributionLinksContributorIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContributionLinksContributorIriTemplateMapping[person=$person]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && person != null) ||
          (keys?.contains(r'person') ?? false))
        r'person': person,
    };
  }
}
