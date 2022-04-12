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
      contributor: ContributionLinksContributor.fromJson(json[r'contributor']),
      feedback: ContributionLinksFeedback.fromJson(json[r'feedback']),
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
    return json
        .map((value) {
          return ContributionLinks.fromJson(value);
        })
        .whereType<ContributionLinks>()
        .toList();
  }

  static Map<String, ContributionLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinks>{};
    }

    final map = json.map((key, value) => MapEntry<String, ContributionLinks?>(
        key, ContributionLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ContributionLinks>;
  }

  // maps a json object with a list of ContributionLinks-objects as value to a dart map
  static Map<String, List<ContributionLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ContributionLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ContributionLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ContributionLinks[contributor=$contributor, feedback=$feedback]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (contributor != null) r'contributor': contributor,
      if (feedback != null) r'feedback': feedback,
    };
  }
}
