//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AssignmentLinksMemberIriTemplate {
  /// Returns a new [AssignmentLinksMemberIriTemplate] instance.
  AssignmentLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [AssignmentLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AssignmentLinksMemberIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksMemberIriTemplate(
      mapping:
          AssignmentLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksMemberIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksMemberIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<AssignmentLinksMemberIriTemplate> listFromJson(
      List<dynamic> json) {
    return <AssignmentLinksMemberIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          AssignmentLinksMemberIriTemplate.fromJson(value),
    ];
  }

  static Map<String, AssignmentLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AssignmentLinksMemberIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentLinksMemberIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AssignmentLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<AssignmentLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<AssignmentLinksMemberIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentLinksMemberIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AssignmentLinksMemberIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
