//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NoteLinksAuthorIriTemplate {
  /// Returns a new [NoteLinksAuthorIriTemplate] instance.
  NoteLinksAuthorIriTemplate({
    this.mapping,
  });

  /// Returns a new [NoteLinksAuthorIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NoteLinksAuthorIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAuthorIriTemplate(
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

    return other is NoteLinksAuthorIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<NoteLinksAuthorIriTemplate> listFromJson(List<dynamic> json) {
    return <NoteLinksAuthorIriTemplate>[
      if (json is List)
        for (dynamic value in json) NoteLinksAuthorIriTemplate.fromJson(value),
    ];
  }

  static Map<String, NoteLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, NoteLinksAuthorIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksAuthorIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NoteLinksAuthorIriTemplate-objects as value to a dart map
  static Map<String, List<NoteLinksAuthorIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NoteLinksAuthorIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksAuthorIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NoteLinksAuthorIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
