//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksBusinessActivityIriTemplate {
  /// Returns a new [FeedbackLinksBusinessActivityIriTemplate] instance.
  FeedbackLinksBusinessActivityIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksBusinessActivityIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksBusinessActivityIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksBusinessActivityIriTemplate(
      mapping: BusinessActivityLinksImageIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksBusinessActivityIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksBusinessActivityIriTemplate> listFromJson(
      List<dynamic> json) {
    return <FeedbackLinksBusinessActivityIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          FeedbackLinksBusinessActivityIriTemplate.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksBusinessActivityIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              FeedbackLinksBusinessActivityIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksBusinessActivityIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksBusinessActivityIriTemplate>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<FeedbackLinksBusinessActivityIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksBusinessActivityIriTemplate.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksBusinessActivityIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
