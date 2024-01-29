//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionLinksFeedback {
  /// Returns a new [ContributionLinksFeedback] instance.
  ContributionLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ContributionLinksFeedback] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionLinksFeedback? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksFeedback(
      href: json[r'href'],
      iriTemplate:
          ContributionLinksFeedbackIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the feedback associated to the given contribution.
  String? href;

  ContributionLinksFeedbackIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksFeedback &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ContributionLinksFeedback> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContributionLinksFeedback>[];
    }

    return json.fold(<ContributionLinksFeedback>[],
        (List<ContributionLinksFeedback> previousValue, element) {
      final ContributionLinksFeedback? object =
          ContributionLinksFeedback.fromJson(element);
      if (object is ContributionLinksFeedback) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionLinksFeedback> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksFeedback>{};
    }

    return json.entries.fold(<String, ContributionLinksFeedback>{},
        (Map<String, ContributionLinksFeedback> previousValue, element) {
      final ContributionLinksFeedback? object =
          ContributionLinksFeedback.fromJson(element.value);
      if (object is ContributionLinksFeedback) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionLinksFeedback-objects as value to a dart map
  static Map<String, List<ContributionLinksFeedback>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionLinksFeedback>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContributionLinksFeedback>>(
          key, ContributionLinksFeedback.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContributionLinksFeedback[href=$href, iriTemplate=$iriTemplate]';

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
