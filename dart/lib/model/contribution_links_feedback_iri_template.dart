//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionLinksFeedbackIriTemplate {
  /// Returns a new [ContributionLinksFeedbackIriTemplate] instance.
  ContributionLinksFeedbackIriTemplate({
    this.mapping,
  });

  /// Returns a new [ContributionLinksFeedbackIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionLinksFeedbackIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksFeedbackIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : ContributionLinksFeedbackIriTemplateMapping.fromJson(
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

    return other is ContributionLinksFeedbackIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ContributionLinksFeedbackIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <ContributionLinksFeedbackIriTemplate>[];
    }

    return json.fold(<ContributionLinksFeedbackIriTemplate>[],
        (List<ContributionLinksFeedbackIriTemplate> previousValue, element) {
      final ContributionLinksFeedbackIriTemplate? object =
          ContributionLinksFeedbackIriTemplate.fromJson(element);
      if (object is ContributionLinksFeedbackIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksFeedbackIriTemplate>{};
    }

    return json.entries.fold(<String, ContributionLinksFeedbackIriTemplate>{},
        (Map<String, ContributionLinksFeedbackIriTemplate> previousValue,
            element) {
      final ContributionLinksFeedbackIriTemplate? object =
          ContributionLinksFeedbackIriTemplate.fromJson(element.value);
      if (object is ContributionLinksFeedbackIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionLinksFeedbackIriTemplate-objects as value to a dart map
  static Map<String, List<ContributionLinksFeedbackIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionLinksFeedbackIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContributionLinksFeedbackIriTemplate>>(
          key, ContributionLinksFeedbackIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ContributionLinksFeedbackIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
