//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonLinksSelf {
  /// Returns a new [PersonLinksSelf] instance.
  PersonLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PersonLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonLinksSelf(
      href: json[r'href'],
      iriTemplate: PersonLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given person.
  String? href;

  PersonLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PersonLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonLinksSelf>[];
    }

    return json.fold(<PersonLinksSelf>[],
        (List<PersonLinksSelf> previousValue, element) {
      final PersonLinksSelf? object = PersonLinksSelf.fromJson(element);
      if (object is PersonLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonLinksSelf>{};
    }

    return json.entries.fold(<String, PersonLinksSelf>{},
        (Map<String, PersonLinksSelf> previousValue, element) {
      final PersonLinksSelf? object = PersonLinksSelf.fromJson(element.value);
      if (object is PersonLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonLinksSelf-objects as value to a dart map
  static Map<String, List<PersonLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonLinksSelf>>(
          key, PersonLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'PersonLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
