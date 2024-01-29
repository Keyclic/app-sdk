//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonLinksSelfIriTemplate {
  /// Returns a new [PersonLinksSelfIriTemplate] instance.
  PersonLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [PersonLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonLinksSelfIriTemplate(
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

    return other is PersonLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PersonLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonLinksSelfIriTemplate>[];
    }

    return json.fold(<PersonLinksSelfIriTemplate>[],
        (List<PersonLinksSelfIriTemplate> previousValue, element) {
      final PersonLinksSelfIriTemplate? object =
          PersonLinksSelfIriTemplate.fromJson(element);
      if (object is PersonLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, PersonLinksSelfIriTemplate>{},
        (Map<String, PersonLinksSelfIriTemplate> previousValue, element) {
      final PersonLinksSelfIriTemplate? object =
          PersonLinksSelfIriTemplate.fromJson(element.value);
      if (object is PersonLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<PersonLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonLinksSelfIriTemplate>>(
          key, PersonLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PersonLinksSelfIriTemplate[mapping=$mapping]';

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
