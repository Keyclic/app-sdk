//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksImagesIriTemplate {
  /// Returns a new [FeedbackLinksImagesIriTemplate] instance.
  FeedbackLinksImagesIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksImagesIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksImagesIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImagesIriTemplate(
      mapping: FeedbackLinksImageIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  FeedbackLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImagesIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksImagesIriTemplate> listFromJson(List<dynamic> json) {
    return <FeedbackLinksImagesIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          FeedbackLinksImagesIriTemplate.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksImagesIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksImagesIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksImagesIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksImagesIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksImagesIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksImagesIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksImagesIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackLinksImagesIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
