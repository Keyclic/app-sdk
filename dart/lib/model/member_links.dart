//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinks {
  /// Returns a new [MemberLinks] instance.
  MemberLinks({
    this.organization,
    this.person,
    this.self,
  });

  /// Returns a new [MemberLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberLinks(
      organization: MemberLinksOrganization.fromJson(json[r'organization']),
      person: MemberLinksPerson.fromJson(json[r'person']),
      self: MemberLinksSelf.fromJson(json[r'self']),
    );
  }

  MemberLinksOrganization? organization;

  MemberLinksPerson? person;

  MemberLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinks &&
        other.organization == organization &&
        other.person == person &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (person == null ? 0 : person.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<MemberLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberLinks>[];
    }

    return json.fold(<MemberLinks>[],
        (List<MemberLinks> previousValue, element) {
      final MemberLinks? object = MemberLinks.fromJson(element);
      if (object is MemberLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinks>{};
    }

    return json.entries.fold(<String, MemberLinks>{},
        (Map<String, MemberLinks> previousValue, element) {
      final MemberLinks? object = MemberLinks.fromJson(element.value);
      if (object is MemberLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberLinks-objects as value to a dart map
  static Map<String, List<MemberLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberLinks>>(
          key, MemberLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberLinks[organization=$organization, person=$person, self=$self]';

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
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
