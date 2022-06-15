//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksSelfIriTemplate {
  /// Returns a new [ReviewRequestLinksSelfIriTemplate] instance.
  ReviewRequestLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReviewRequestLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksSelfIriTemplate(
      mapping:
          ReviewRequestLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ReviewRequestLinksSelfIriTemplateMapping? mapping;

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
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return ReviewRequestLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<ReviewRequestLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, ReviewRequestLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewRequestLinksSelfIriTemplate?>(
            key, ReviewRequestLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewRequestLinksSelfIriTemplate>;
  }

  // maps a json object with a list of ReviewRequestLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewRequestLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
