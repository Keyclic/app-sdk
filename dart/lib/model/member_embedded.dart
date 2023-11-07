//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static MemberEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberEmbedded(
      organization: json[r'organization'] is! Map
          ? null
          : Organization.fromJson(json[r'organization']),
      person: json[r'person'] is! Map ? null : Person.fromJson(json[r'person']),
      roles: json[r'roles'] is! Iterable
          ? null
          : Role.listFromJson(json[r'roles']),
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

  static List<MemberEmbedded> listFromJson(Iterable<dynamic>? json) {
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

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && organization != null) ||
          (keys?.contains(r'organization') ?? false))
        r'organization': organization?.toJson(),
      if ((keys == null && person != null) ||
          (keys?.contains(r'person') ?? false))
        r'person': person?.toJson(),
      if ((keys == null && roles != null) ||
          (keys?.contains(r'roles') ?? false))
        r'roles': roles,
    };
  }
}
