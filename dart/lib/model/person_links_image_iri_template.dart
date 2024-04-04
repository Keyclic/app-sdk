//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonLinksImageIriTemplate {
  /// Returns a new [PersonLinksImageIriTemplate] instance.
  PersonLinksImageIriTemplate({
    this.mapping,
  });

  /// Returns a new [PersonLinksImageIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonLinksImageIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PersonLinksImageIriTemplate(
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

    return other is PersonLinksImageIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PersonLinksImageIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonLinksImageIriTemplate>[];
    }

    return json.fold(<PersonLinksImageIriTemplate>[],
        (List<PersonLinksImageIriTemplate> previousValue, element) {
      final PersonLinksImageIriTemplate? object =
          PersonLinksImageIriTemplate.fromJson(element);
      if (object is PersonLinksImageIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonLinksImageIriTemplate>{};
    }

    return json.entries.fold(<String, PersonLinksImageIriTemplate>{},
        (Map<String, PersonLinksImageIriTemplate> previousValue, element) {
      final PersonLinksImageIriTemplate? object =
          PersonLinksImageIriTemplate.fromJson(element.value);
      if (object is PersonLinksImageIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonLinksImageIriTemplate-objects as value to a dart map
  static Map<String, List<PersonLinksImageIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonLinksImageIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonLinksImageIriTemplate>>(
          key, PersonLinksImageIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PersonLinksImageIriTemplate[mapping=$mapping]';

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
