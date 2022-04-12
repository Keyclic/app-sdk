//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksTrackingIriTemplate {
  /// Returns a new [FeedbackLinksTrackingIriTemplate] instance.
  FeedbackLinksTrackingIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksTrackingIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksTrackingIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksTrackingIriTemplate(
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

    return other is FeedbackLinksTrackingIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksTrackingIriTemplate> listFromJson(
      List<dynamic> json) {
    return <FeedbackLinksTrackingIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          FeedbackLinksTrackingIriTemplate.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksTrackingIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksTrackingIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksTrackingIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksTrackingIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksTrackingIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksTrackingIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackLinksTrackingIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
