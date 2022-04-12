//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksCategoryIriTemplate {
  /// Returns a new [FeedbackLinksCategoryIriTemplate] instance.
  FeedbackLinksCategoryIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksCategoryIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksCategoryIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksCategoryIriTemplate(
      mapping: CategoryLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksCategoryIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksCategoryIriTemplate> listFromJson(
      List<dynamic> json) {
    return <FeedbackLinksCategoryIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          FeedbackLinksCategoryIriTemplate.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksCategoryIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksCategoryIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksCategoryIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksCategoryIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksCategoryIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksCategoryIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackLinksCategoryIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
