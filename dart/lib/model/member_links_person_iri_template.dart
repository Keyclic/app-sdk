//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinksPersonIriTemplate {
  /// Returns a new [MemberLinksPersonIriTemplate] instance.
  MemberLinksPersonIriTemplate({
    this.mapping,
  });

  /// Returns a new [MemberLinksPersonIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinksPersonIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberLinksPersonIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

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

  static List<MemberLinksPersonIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberLinksPersonIriTemplate>[];
    }
    return json
        .map((value) {
          return MemberLinksPersonIriTemplate.fromJson(value);
        })
        .whereType<MemberLinksPersonIriTemplate>()
        .toList();
  }

  static Map<String, MemberLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksPersonIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MemberLinksPersonIriTemplate?>(
            key, MemberLinksPersonIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberLinksPersonIriTemplate>;
  }

  // maps a json object with a list of MemberLinksPersonIriTemplate-objects as value to a dart map
  static Map<String, List<MemberLinksPersonIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberLinksPersonIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
