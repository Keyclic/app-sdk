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
    return json
        .map((value) {
          return ContributionLinksFeedbackIriTemplateMapping.fromJson(value);
        })
        .whereType<ContributionLinksFeedbackIriTemplateMapping>()
        .toList();
  }

  static Map<String, ContributionLinksFeedbackIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksFeedbackIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ContributionLinksFeedbackIriTemplateMapping?>(
            key, ContributionLinksFeedbackIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ContributionLinksFeedbackIriTemplateMapping>;
  }

  // maps a json object with a list of ContributionLinksFeedbackIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ContributionLinksFeedbackIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ContributionLinksFeedbackIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ContributionLinksFeedbackIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'ContributionLinksFeedbackIriTemplateMapping[feedback=$feedback]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (feedback != null) r'feedback': feedback,
    };
  }
}
