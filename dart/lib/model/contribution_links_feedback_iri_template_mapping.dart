//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionLinksFeedbackIriTemplateMapping {
  /// Returns a new [ContributionLinksFeedbackIriTemplateMapping] instance.
  ContributionLinksFeedbackIriTemplateMapping({
    this.feedback,
  });

  /// Returns a new [ContributionLinksFeedbackIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionLinksFeedbackIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksFeedbackIriTemplateMapping(
      feedback: json[r'feedback'],
    );
  }

  String? feedback;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksFeedbackIriTemplateMapping &&
        other.feedback == feedback;
  }

  @override
  int get hashCode => (feedback == null ? 0 : feedback.hashCode);

  static List<ContributionLinksFeedbackIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ContributionLinksFeedbackIriTemplateMapping>[];
    }

    return json.fold(<ContributionLinksFeedbackIriTemplateMapping>[],
        (List<ContributionLinksFeedbackIriTemplateMapping> previousValue,
            element) {
      final ContributionLinksFeedbackIriTemplateMapping? object =
          ContributionLinksFeedbackIriTemplateMapping.fromJson(element);
      if (object is ContributionLinksFeedbackIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionLinksFeedbackIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksFeedbackIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, ContributionLinksFeedbackIriTemplateMapping>{},
        (Map<String, ContributionLinksFeedbackIriTemplateMapping> previousValue,
            element) {
      final ContributionLinksFeedbackIriTemplateMapping? object =
          ContributionLinksFeedbackIriTemplateMapping.fromJson(element.value);
      if (object is ContributionLinksFeedbackIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionLinksFeedbackIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ContributionLinksFeedbackIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionLinksFeedbackIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<ContributionLinksFeedbackIriTemplateMapping>>(
          key, ContributionLinksFeedbackIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContributionLinksFeedbackIriTemplateMapping[feedback=$feedback]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && feedback != null) ||
          (keys?.contains(r'feedback') ?? false))
        r'feedback': feedback,
    };
  }
}
