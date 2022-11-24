//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MemberEmbedded {
  /// Returns a new [MemberEmbedded] instance.
  MemberEmbedded({
    this.organization,
    this.person,
    this.roles = const [],
  });

  /// Returns a new [MemberEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MemberEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberEmbedded(
      organization: Organization.fromJson(json[r'organization']),
      person: Person.fromJson(json[r'person']),
      roles: Role.listFromJson(json[r'roles']),
    );
  }

  Organization organization;

  Person person;

  List<Role> roles;

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

  static List<MemberEmbedded> listFromJson(List<dynamic> json) {
    return <MemberEmbedded>[
      if (json is List)
        for (dynamic value in json) MemberEmbedded.fromJson(value),
    ];
  }

  static Map<String, MemberEmbedded> mapFromJson(Map<String, dynamic> json) {
    return <String, MemberEmbedded>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberEmbedded.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MemberEmbedded-objects as value to a dart map
  static Map<String, List<MemberEmbedded>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MemberEmbedded>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'MemberEmbedded[organization=$organization, person=$person, roles=$roles]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (organization != null) r'organization': organization,
      if (person != null) r'person': person,
      if (roles != null) r'roles': roles,
    };
  }
}
