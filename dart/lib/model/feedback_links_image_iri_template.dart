//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksImageIriTemplate {
  /// Returns a new [FeedbackLinksImageIriTemplate] instance.
  FeedbackLinksImageIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksImageIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksImageIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImageIriTemplate(
      mapping: FeedbackLinksImageIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  FeedbackLinksImageIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImageIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksImageIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksImageIriTemplate>[];
    }

    return json.fold(<FeedbackLinksImageIriTemplate>[],
        (List<FeedbackLinksImageIriTemplate> previousValue, element) {
      final FeedbackLinksImageIriTemplate? object =
          FeedbackLinksImageIriTemplate.fromJson(element);
      if (object is FeedbackLinksImageIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksImageIriTemplate>{};
    }

    return json.entries.fold(<String, FeedbackLinksImageIriTemplate>{},
        (Map<String, FeedbackLinksImageIriTemplate> previousValue, element) {
      final FeedbackLinksImageIriTemplate? object =
          FeedbackLinksImageIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksImageIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksImageIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksImageIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksImageIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksImageIriTemplate>>(
          key, FeedbackLinksImageIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksImageIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
