//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContactJsonhalReadEmbedded {
  /// Returns a new [ContactJsonhalReadEmbedded] instance.
  ContactJsonhalReadEmbedded({
    this.organization,
    this.person,
  });

  /// Returns a new [ContactJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContactJsonhalReadEmbedded(
      organization: OrganizationJsonhalRead.fromJson(json[r'organization']),
      person: PersonJsonhalRead.fromJson(json[r'person']),
    );
  }

  OrganizationJsonhalRead? organization;

  PersonJsonhalRead? person;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContactJsonhalReadEmbedded &&
        other.organization == organization &&
        other.person == person;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (person == null ? 0 : person.hashCode);

  static List<ContactJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContactJsonhalReadEmbedded>[];
    }

    return json.fold(<ContactJsonhalReadEmbedded>[],
        (List<ContactJsonhalReadEmbedded> previousValue, element) {
      final ContactJsonhalReadEmbedded? object =
          ContactJsonhalReadEmbedded.fromJson(element);
      if (object is ContactJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContactJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContactJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, ContactJsonhalReadEmbedded>{},
        (Map<String, ContactJsonhalReadEmbedded> previousValue, element) {
      final ContactJsonhalReadEmbedded? object =
          ContactJsonhalReadEmbedded.fromJson(element.value);
      if (object is ContactJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContactJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<ContactJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContactJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContactJsonhalReadEmbedded>>(
          key, ContactJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContactJsonhalReadEmbedded[organization=$organization, person=$person]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^person\.').hasMatch(key)))
        r'person': person?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^person\.'))) {
            previousValue.add(element.split(RegExp(r'^person\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
