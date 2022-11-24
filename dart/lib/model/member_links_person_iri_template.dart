//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MemberLinksPersonIriTemplate {
  /// Returns a new [MemberLinksPersonIriTemplate] instance.
  MemberLinksPersonIriTemplate({
    this.mapping,
  });

  /// Returns a new [MemberLinksPersonIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MemberLinksPersonIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinksPersonIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksPersonIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MemberLinksPersonIriTemplate> listFromJson(List<dynamic> json) {
    return <MemberLinksPersonIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          MemberLinksPersonIriTemplate.fromJson(value),
    ];
  }

  static Map<String, MemberLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, MemberLinksPersonIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinksPersonIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MemberLinksPersonIriTemplate-objects as value to a dart map
  static Map<String, List<MemberLinksPersonIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MemberLinksPersonIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinksPersonIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MemberLinksPersonIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
