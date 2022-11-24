//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksPlansIriTemplate {
  /// Returns a new [FeedbackLinksPlansIriTemplate] instance.
  FeedbackLinksPlansIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksPlansIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksPlansIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksPlansIriTemplate(
      mapping: FeedbackLinksPlansIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  FeedbackLinksPlansIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksPlansIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksPlansIriTemplate> listFromJson(List<dynamic> json) {
    return <FeedbackLinksPlansIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          FeedbackLinksPlansIriTemplate.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksPlansIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksPlansIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksPlansIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksPlansIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksPlansIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksPlansIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksPlansIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackLinksPlansIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
