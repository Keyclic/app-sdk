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

    return json.fold(<FeedbackLinksPlansIriTemplate>[],
        (List<FeedbackLinksPlansIriTemplate> previousValue, element) {
      final FeedbackLinksPlansIriTemplate? object =
          FeedbackLinksPlansIriTemplate.fromJson(element);
      if (object is FeedbackLinksPlansIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksPlansIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksPlansIriTemplate>{};
    }

    return json.entries.fold(<String, FeedbackLinksPlansIriTemplate>{},
        (Map<String, FeedbackLinksPlansIriTemplate> previousValue, element) {
      final FeedbackLinksPlansIriTemplate? object =
          FeedbackLinksPlansIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksPlansIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksPlansIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksPlansIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksPlansIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksPlansIriTemplate>>(
          key, FeedbackLinksPlansIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksPlansIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
