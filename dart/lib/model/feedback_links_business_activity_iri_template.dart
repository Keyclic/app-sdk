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
      mapping: json[r'mapping'] is! Map
          ? null
          : BusinessActivityLinksImageIriTemplateMapping.fromJson(
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

    return json.fold(<FeedbackLinksBusinessActivityIriTemplate>[],
        (List<FeedbackLinksBusinessActivityIriTemplate> previousValue,
            element) {
      final FeedbackLinksBusinessActivityIriTemplate? object =
          FeedbackLinksBusinessActivityIriTemplate.fromJson(element);
      if (object is FeedbackLinksBusinessActivityIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksBusinessActivityIriTemplate>{};
    }

    return json.entries.fold(
        <String, FeedbackLinksBusinessActivityIriTemplate>{},
        (Map<String, FeedbackLinksBusinessActivityIriTemplate> previousValue,
            element) {
      final FeedbackLinksBusinessActivityIriTemplate? object =
          FeedbackLinksBusinessActivityIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksBusinessActivityIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksBusinessActivityIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksBusinessActivityIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksBusinessActivityIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksBusinessActivityIriTemplate>>(
          key, FeedbackLinksBusinessActivityIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksBusinessActivityIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
