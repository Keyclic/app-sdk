//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ContributionLinksFeedback {
  /// Returns a new [ContributionLinksFeedback] instance.
  ContributionLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ContributionLinksFeedback] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ContributionLinksFeedback.fromJson(Map<String, dynamic> json) {
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
  String href;

  ContributionLinksFeedbackIriTemplate iriTemplate;

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

  static List<ContributionLinksFeedback> listFromJson(List<dynamic> json) {
    return <ContributionLinksFeedback>[
      if (json is List)
        for (dynamic value in json) ContributionLinksFeedback.fromJson(value),
    ];
  }

  static Map<String, ContributionLinksFeedback> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ContributionLinksFeedback>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ContributionLinksFeedback.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ContributionLinksFeedback-objects as value to a dart map
  static Map<String, List<ContributionLinksFeedback>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ContributionLinksFeedback>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ContributionLinksFeedback.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ContributionLinksFeedback[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
