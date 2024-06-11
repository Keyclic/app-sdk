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
  static ContributionLinksFeedbackIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContributionLinksFeedbackIriTemplate(
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

    return other is ContributionLinksFeedbackIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ContributionLinksFeedbackIriTemplate> listFromJson(
      Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
