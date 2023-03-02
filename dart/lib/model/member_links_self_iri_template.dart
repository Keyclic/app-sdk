//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MemberLinksSelfIriTemplate {
  /// Returns a new [MemberLinksSelfIriTemplate] instance.
  MemberLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [MemberLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MemberLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinksSelfIriTemplate(
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

    return other is MemberLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MemberLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <MemberLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json) MemberLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, MemberLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, MemberLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MemberLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<MemberLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MemberLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MemberLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
