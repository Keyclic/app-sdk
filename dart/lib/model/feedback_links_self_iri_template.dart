//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksSelfIriTemplate {
  /// Returns a new [FeedbackLinksSelfIriTemplate] instance.
  FeedbackLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksSelfIriTemplate(
      mapping: ContributionLinksFeedbackIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksFeedbackIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksSelfIriTemplate>[];
    }

    return json.fold(<FeedbackLinksSelfIriTemplate>[],
        (List<FeedbackLinksSelfIriTemplate> previousValue, element) {
      final FeedbackLinksSelfIriTemplate? object =
          FeedbackLinksSelfIriTemplate.fromJson(element);
      if (object is FeedbackLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, FeedbackLinksSelfIriTemplate>{},
        (Map<String, FeedbackLinksSelfIriTemplate> previousValue, element) {
      final FeedbackLinksSelfIriTemplate? object =
          FeedbackLinksSelfIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksSelfIriTemplate>>(
          key, FeedbackLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
