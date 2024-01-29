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

    return json.fold(<ContributionLinksContributor>[],
        (List<ContributionLinksContributor> previousValue, element) {
      final ContributionLinksContributor? object =
          ContributionLinksContributor.fromJson(element);
      if (object is ContributionLinksContributor) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionLinksContributor> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksContributor>{};
    }

    return json.entries.fold(<String, ContributionLinksContributor>{},
        (Map<String, ContributionLinksContributor> previousValue, element) {
      final ContributionLinksContributor? object =
          ContributionLinksContributor.fromJson(element.value);
      if (object is ContributionLinksContributor) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionLinksContributor-objects as value to a dart map
  static Map<String, List<ContributionLinksContributor>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionLinksContributor>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContributionLinksContributor>>(
          key, ContributionLinksContributor.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContributionLinksContributor[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
