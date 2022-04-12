//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewLinksSelfIriTemplate {
  /// Returns a new [ReviewLinksSelfIriTemplate] instance.
  ReviewLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksSelfIriTemplate(
      mapping: ReviewLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ReviewLinksSelfIriTemplateMapping? mapping;

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

  static List<ReviewLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return ReviewLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<ReviewLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, ReviewLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewLinksSelfIriTemplate?>(
            key, ReviewLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewLinksSelfIriTemplate>;
  }

  // maps a json object with a list of ReviewLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
