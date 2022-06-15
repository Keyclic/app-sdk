//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinksOrganizationIriTemplate {
  /// Returns a new [MemberLinksOrganizationIriTemplate] instance.
  MemberLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [MemberLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinksOrganizationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MemberLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <MemberLinksOrganizationIriTemplate>[];
    }
    return json
        .map((value) {
          return MemberLinksOrganizationIriTemplate.fromJson(value);
        })
        .whereType<MemberLinksOrganizationIriTemplate>()
        .toList();
  }

  static Map<String, MemberLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksOrganizationIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MemberLinksOrganizationIriTemplate?>(
            key, MemberLinksOrganizationIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberLinksOrganizationIriTemplate>;
  }

  // maps a json object with a list of MemberLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<MemberLinksOrganizationIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              MemberLinksOrganizationIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MemberLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
