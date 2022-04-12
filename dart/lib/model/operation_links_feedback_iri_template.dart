//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksFeedbackIriTemplate {
  /// Returns a new [OperationLinksFeedbackIriTemplate] instance.
  OperationLinksFeedbackIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksFeedbackIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksFeedbackIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksFeedbackIriTemplate(
      mapping: ContributionLinksFeedbackIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksFeedbackIriTemplateMapping mapping;

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
      List<dynamic> json) {
    return <OperationLinksFeedbackIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OperationLinksFeedbackIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OperationLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksFeedbackIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksFeedbackIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksFeedbackIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksFeedbackIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksFeedbackIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
