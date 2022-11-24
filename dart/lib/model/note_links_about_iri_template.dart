//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NoteLinksAboutIriTemplate {
  /// Returns a new [NoteLinksAboutIriTemplate] instance.
  NoteLinksAboutIriTemplate({
    this.mapping,
  });

  /// Returns a new [NoteLinksAboutIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NoteLinksAboutIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAboutIriTemplate(
      mapping:
          AssignmentLinksReportIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksAboutIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<NoteLinksAboutIriTemplate> listFromJson(List<dynamic> json) {
    return <NoteLinksAboutIriTemplate>[
      if (json is List)
        for (dynamic value in json) NoteLinksAboutIriTemplate.fromJson(value),
    ];
  }

  static Map<String, NoteLinksAboutIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, NoteLinksAboutIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksAboutIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NoteLinksAboutIriTemplate-objects as value to a dart map
  static Map<String, List<NoteLinksAboutIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NoteLinksAboutIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksAboutIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NoteLinksAboutIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
