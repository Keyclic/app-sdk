//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionLinks {
  /// Returns a new [ContributionLinks] instance.
  ContributionLinks({
    this.contributor,
    this.feedback,
  });

  /// Returns a new [ContributionLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionLinks(
      contributor: json[r'contributor'] is! Map
          ? null
          : ContributionLinksContributor.fromJson(json[r'contributor']),
      feedback: json[r'feedback'] is! Map
          ? null
          : ContributionLinksFeedback.fromJson(json[r'feedback']),
    );
  }

  ContributionLinksContributor? contributor;

  ContributionLinksFeedback? feedback;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinks &&
        other.contributor == contributor &&
        other.feedback == feedback;
  }

  @override
  int get hashCode =>
      (contributor == null ? 0 : contributor.hashCode) +
      (feedback == null ? 0 : feedback.hashCode);

  static List<ContributionLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContributionLinks>[];
    }

    return json.fold(<ContributionLinks>[],
        (List<ContributionLinks> previousValue, element) {
      final ContributionLinks? object = ContributionLinks.fromJson(element);
      if (object is ContributionLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinks>{};
    }

    return json.entries.fold(<String, ContributionLinks>{},
        (Map<String, ContributionLinks> previousValue, element) {
      final ContributionLinks? object =
          ContributionLinks.fromJson(element.value);
      if (object is ContributionLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionLinks-objects as value to a dart map
  static Map<String, List<ContributionLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContributionLinks>>(
          key, ContributionLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContributionLinks[contributor=$contributor, feedback=$feedback]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && contributor != null) ||
          (keys?.contains(r'contributor') ?? false))
        r'contributor': contributor?.toJson(),
      if ((keys == null && feedback != null) ||
          (keys?.contains(r'feedback') ?? false))
        r'feedback': feedback?.toJson(),
    };
  }
}
