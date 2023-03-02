//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AssignmentLinksMemberIriTemplateMapping {
  /// Returns a new [AssignmentLinksMemberIriTemplateMapping] instance.
  AssignmentLinksMemberIriTemplateMapping({
    this.member,
  });

  /// Returns a new [AssignmentLinksMemberIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AssignmentLinksMemberIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksMemberIriTemplateMapping(
      member: json[r'member'],
    );
  }

  String member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksMemberIriTemplateMapping &&
        other.member == member;
  }

  @override
  int get hashCode => (member == null ? 0 : member.hashCode);

  static List<AssignmentLinksMemberIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <AssignmentLinksMemberIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          AssignmentLinksMemberIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, AssignmentLinksMemberIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AssignmentLinksMemberIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              AssignmentLinksMemberIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AssignmentLinksMemberIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksMemberIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<AssignmentLinksMemberIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              AssignmentLinksMemberIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentLinksMemberIriTemplateMapping[member=$member]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (member != null) r'member': member,
    };
  }
}
