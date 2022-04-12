//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequestLinksSelfIriTemplate {
  /// Returns a new [ReviewRequestLinksSelfIriTemplate] instance.
  ReviewRequestLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequestLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksSelfIriTemplate(
      mapping:
          ReviewRequestLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ReviewRequestLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewRequestLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return <ReviewRequestLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ReviewRequestLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReviewRequestLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewRequestLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewRequestLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewRequestLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ReviewRequestLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewRequestLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
