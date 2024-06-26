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
  static ContributionLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ContributionLinks> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^contributor\.').hasMatch(key)))
        r'contributor': contributor?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^contributor\.'))) {
            previousValue.add(element.split(RegExp(r'^contributor\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^feedback\.').hasMatch(key)))
        r'feedback': feedback?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^feedback\.'))) {
            previousValue.add(element.split(RegExp(r'^feedback\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
