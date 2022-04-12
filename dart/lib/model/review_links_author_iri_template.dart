//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewLinksAuthorIriTemplate {
  /// Returns a new [ReviewLinksAuthorIriTemplate] instance.
  ReviewLinksAuthorIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewLinksAuthorIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewLinksAuthorIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksAuthorIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksAuthorIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewLinksAuthorIriTemplate> listFromJson(List<dynamic> json) {
    return <ReviewLinksAuthorIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ReviewLinksAuthorIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReviewLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewLinksAuthorIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinksAuthorIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewLinksAuthorIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewLinksAuthorIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewLinksAuthorIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinksAuthorIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewLinksAuthorIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
