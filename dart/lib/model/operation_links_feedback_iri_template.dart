//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksFeedbackIriTemplate {
  /// Returns a new [OperationLinksFeedbackIriTemplate] instance.
  OperationLinksFeedbackIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksFeedbackIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksFeedbackIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksFeedbackIriTemplate(
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

    return other is OperationLinksFeedbackIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksFeedbackIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksFeedbackIriTemplate>[];
    }
    return json
        .map((value) {
          return OperationLinksFeedbackIriTemplate.fromJson(value);
        })
        .whereType<OperationLinksFeedbackIriTemplate>()
        .toList();
  }

  static Map<String, OperationLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksFeedbackIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationLinksFeedbackIriTemplate?>(
            key, OperationLinksFeedbackIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksFeedbackIriTemplate>;
  }

  // maps a json object with a list of OperationLinksFeedbackIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksFeedbackIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationLinksFeedbackIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              OperationLinksFeedbackIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationLinksFeedbackIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
