//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MemberJsonhalReadEmbedded {
  /// Returns a new [MemberJsonhalReadEmbedded] instance.
  MemberJsonhalReadEmbedded({
    this.organization,
    this.person,
    this.roles,
  });

  /// Returns a new [MemberJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MemberJsonhalReadEmbedded(
      organization: OrganizationJsonhalRead.fromJson(json[r'organization']),
      person: PersonJsonhalRead.fromJson(json[r'person']),
      roles: RoleJsonhalRead.listFromJson(json[r'roles']),
    );
  }

  OrganizationJsonhalRead? organization;

  PersonJsonhalRead? person;

  List<RoleJsonhalRead>? roles;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberJsonhalReadEmbedded &&
        other.organization == organization &&
        other.person == person &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (person == null ? 0 : person.hashCode) +
      (roles == null ? 0 : roles.hashCode);

  static List<MemberJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <MemberJsonhalReadEmbedded>[];
    }

    return json.fold(<MemberJsonhalReadEmbedded>[],
        (List<MemberJsonhalReadEmbedded> previousValue, element) {
      final MemberJsonhalReadEmbedded? object =
          MemberJsonhalReadEmbedded.fromJson(element);
      if (object is MemberJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, MemberJsonhalReadEmbedded>{},
        (Map<String, MemberJsonhalReadEmbedded> previousValue, element) {
      final MemberJsonhalReadEmbedded? object =
          MemberJsonhalReadEmbedded.fromJson(element.value);
      if (object is MemberJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<MemberJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberJsonhalReadEmbedded>>(
          key, MemberJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberJsonhalReadEmbedded[organization=$organization, person=$person, roles=$roles]';

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