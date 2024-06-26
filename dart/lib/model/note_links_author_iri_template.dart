//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NoteLinksAuthorIriTemplate {
  /// Returns a new [NoteLinksAuthorIriTemplate] instance.
  NoteLinksAuthorIriTemplate({
    this.mapping,
  });

  /// Returns a new [NoteLinksAuthorIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteLinksAuthorIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NoteLinksAuthorIriTemplate(
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

    return other is NoteLinksAuthorIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<NoteLinksAuthorIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <NoteLinksAuthorIriTemplate>[];
    }

    return json.fold(<NoteLinksAuthorIriTemplate>[],
        (List<NoteLinksAuthorIriTemplate> previousValue, element) {
      final NoteLinksAuthorIriTemplate? object =
          NoteLinksAuthorIriTemplate.fromJson(element);
      if (object is NoteLinksAuthorIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteLinksAuthorIriTemplate>{};
    }

    return json.entries.fold(<String, NoteLinksAuthorIriTemplate>{},
        (Map<String, NoteLinksAuthorIriTemplate> previousValue, element) {
      final NoteLinksAuthorIriTemplate? object =
          NoteLinksAuthorIriTemplate.fromJson(element.value);
      if (object is NoteLinksAuthorIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteLinksAuthorIriTemplate-objects as value to a dart map
  static Map<String, List<NoteLinksAuthorIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteLinksAuthorIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteLinksAuthorIriTemplate>>(
          key, NoteLinksAuthorIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteLinksAuthorIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
