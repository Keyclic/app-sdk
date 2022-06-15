//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksPlansIriTemplate {
  /// Returns a new [FeedbackLinksPlansIriTemplate] instance.
  FeedbackLinksPlansIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksPlansIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksPlansIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksPlansIriTemplate(
      mapping: FeedbackLinksPlansIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  FeedbackLinksPlansIriTemplateMapping? mapping;

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

  static List<FeedbackLinksPlansIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksPlansIriTemplate>[];
    }
    return json
        .map((value) {
          return FeedbackLinksPlansIriTemplate.fromJson(value);
        })
        .whereType<FeedbackLinksPlansIriTemplate>()
        .toList();
  }

  static Map<String, FeedbackLinksPlansIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksPlansIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, FeedbackLinksPlansIriTemplate?>(
            key, FeedbackLinksPlansIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackLinksPlansIriTemplate>;
  }

  // maps a json object with a list of FeedbackLinksPlansIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksPlansIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackLinksPlansIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
