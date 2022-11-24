//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksSelfIriTemplate {
  /// Returns a new [FeedbackLinksSelfIriTemplate] instance.
  FeedbackLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksSelfIriTemplate(
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

    return other is FeedbackLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <FeedbackLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          FeedbackLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
