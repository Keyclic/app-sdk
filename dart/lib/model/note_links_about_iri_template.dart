//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NoteLinksAboutIriTemplate {
  /// Returns a new [NoteLinksAboutIriTemplate] instance.
  NoteLinksAboutIriTemplate({
    this.mapping,
  });

  /// Returns a new [NoteLinksAboutIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteLinksAboutIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAboutIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : AssignmentLinksReportIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping? mapping;

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

  static List<NoteLinksAboutIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <NoteLinksAboutIriTemplate>[];
    }

    return json.fold(<NoteLinksAboutIriTemplate>[],
        (List<NoteLinksAboutIriTemplate> previousValue, element) {
      final NoteLinksAboutIriTemplate? object =
          NoteLinksAboutIriTemplate.fromJson(element);
      if (object is NoteLinksAboutIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteLinksAboutIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteLinksAboutIriTemplate>{};
    }

    return json.entries.fold(<String, NoteLinksAboutIriTemplate>{},
        (Map<String, NoteLinksAboutIriTemplate> previousValue, element) {
      final NoteLinksAboutIriTemplate? object =
          NoteLinksAboutIriTemplate.fromJson(element.value);
      if (object is NoteLinksAboutIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteLinksAboutIriTemplate-objects as value to a dart map
  static Map<String, List<NoteLinksAboutIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteLinksAboutIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteLinksAboutIriTemplate>>(
          key, NoteLinksAboutIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteLinksAboutIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
