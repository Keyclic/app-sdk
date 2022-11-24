//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewLinksSelfIriTemplate {
  /// Returns a new [ReviewLinksSelfIriTemplate] instance.
  ReviewLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksSelfIriTemplate(
      mapping: ReviewLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ReviewLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReviewLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <ReviewLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json) ReviewLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ReviewLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
