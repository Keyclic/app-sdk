//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ContributionLinksFeedbackIriTemplate {
  /// Returns a new [ContributionLinksFeedbackIriTemplate] instance.
  ContributionLinksFeedbackIriTemplate({
    this.mapping,
  });

  /// Returns a new [ContributionLinksFeedbackIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ContributionLinksFeedbackIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksFeedbackIriTemplate(
      mapping: ContributionLinksFeedbackIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksFeedbackIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksFeedbackIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ContributionLinksFeedbackIriTemplate> listFromJson(
      List<dynamic> json) {
    return <ContributionLinksFeedbackIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ContributionLinksFeedbackIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ContributionLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ContributionLinksFeedbackIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ContributionLinksFeedbackIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ContributionLinksFeedbackIriTemplate-objects as value to a dart map
  static Map<String, List<ContributionLinksFeedbackIriTemplate>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<ContributionLinksFeedbackIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ContributionLinksFeedbackIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ContributionLinksFeedbackIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
