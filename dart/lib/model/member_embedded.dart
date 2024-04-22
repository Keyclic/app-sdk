//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberEmbedded {
  /// Returns a new [MemberEmbedded] instance.
  MemberEmbedded({
    this.organization,
    this.person,
    this.roles,
  });

  /// Returns a new [MemberEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MemberEmbedded(
      organization: Organization.fromJson(json[r'organization']),
      person: Person.fromJson(json[r'person']),
      roles: Role.listFromJson(json[r'roles']),
    );
  }

  Organization? organization;

  Person? person;

  List<Role>? roles;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberEmbedded &&
        other.organization == organization &&
        other.person == person &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (person == null ? 0 : person.hashCode) +
      (roles == null ? 0 : roles.hashCode);

  static List<MemberEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <MemberEmbedded>[];
    }

    return json.fold(<MemberEmbedded>[],
        (List<MemberEmbedded> previousValue, element) {
      final MemberEmbedded? object = MemberEmbedded.fromJson(element);
      if (object is MemberEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberEmbedded>{};
    }

    return json.entries.fold(<String, MemberEmbedded>{},
        (Map<String, MemberEmbedded> previousValue, element) {
      final MemberEmbedded? object = MemberEmbedded.fromJson(element.value);
      if (object is MemberEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberEmbedded-objects as value to a dart map
  static Map<String, List<MemberEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberEmbedded>>(
          key, MemberEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberEmbedded[organization=$organization, person=$person, roles=$roles]';

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
      if (keys == null || keys.contains(r'roles')) r'roles': roles,
    };
  }
}
