//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksCategoryIriTemplate {
  /// Returns a new [FeedbackLinksCategoryIriTemplate] instance.
  FeedbackLinksCategoryIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksCategoryIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksCategoryIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksCategoryIriTemplate(
      mapping: CategoryLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksCategoryIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksCategoryIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksCategoryIriTemplate>[];
    }

    return json.fold(<FeedbackLinksCategoryIriTemplate>[],
        (List<FeedbackLinksCategoryIriTemplate> previousValue, element) {
      final FeedbackLinksCategoryIriTemplate? object =
          FeedbackLinksCategoryIriTemplate.fromJson(element);
      if (object is FeedbackLinksCategoryIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksCategoryIriTemplate>{};
    }

    return json.entries.fold(<String, FeedbackLinksCategoryIriTemplate>{},
        (Map<String, FeedbackLinksCategoryIriTemplate> previousValue, element) {
      final FeedbackLinksCategoryIriTemplate? object =
          FeedbackLinksCategoryIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksCategoryIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksCategoryIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksCategoryIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksCategoryIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksCategoryIriTemplate>>(
          key, FeedbackLinksCategoryIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksCategoryIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
