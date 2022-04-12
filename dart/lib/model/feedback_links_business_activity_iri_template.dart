//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksBusinessActivityIriTemplate {
  /// Returns a new [FeedbackLinksBusinessActivityIriTemplate] instance.
  FeedbackLinksBusinessActivityIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksBusinessActivityIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksBusinessActivityIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksBusinessActivityIriTemplate(
      mapping: BusinessActivityLinksImageIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping? mapping;

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
      List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksBusinessActivityIriTemplate>[];
    }
    return json
        .map((value) {
          return FeedbackLinksBusinessActivityIriTemplate.fromJson(value);
        })
        .whereType<FeedbackLinksBusinessActivityIriTemplate>()
        .toList();
  }

  static Map<String, FeedbackLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksBusinessActivityIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, FeedbackLinksBusinessActivityIriTemplate?>(
            key, FeedbackLinksBusinessActivityIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackLinksBusinessActivityIriTemplate>;
  }

  // maps a json object with a list of FeedbackLinksBusinessActivityIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksBusinessActivityIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<FeedbackLinksBusinessActivityIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
