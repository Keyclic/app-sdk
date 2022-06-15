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
      List<dynamic>? json) {
    if (json == null) {
      return <ContributionLinksFeedbackIriTemplate>[];
    }
    return json
        .map((value) {
          return ContributionLinksFeedbackIriTemplate.fromJson(value);
        })
        .whereType<ContributionLinksFeedbackIriTemplate>()
        .toList();
  }

  static Map<String, ContributionLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionLinksFeedbackIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ContributionLinksFeedbackIriTemplate?>(
            key, ContributionLinksFeedbackIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ContributionLinksFeedbackIriTemplate>;
  }

  // maps a json object with a list of ContributionLinksFeedbackIriTemplate-objects as value to a dart map
  static Map<String, List<ContributionLinksFeedbackIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ContributionLinksFeedbackIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              ContributionLinksFeedbackIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ContributionLinksFeedbackIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
