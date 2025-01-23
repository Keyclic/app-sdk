//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CollaboratorJsonhalReadEmbedded {
  /// Returns a new [CollaboratorJsonhalReadEmbedded] instance.
  CollaboratorJsonhalReadEmbedded({
    this.organization,
    this.person,
    this.roles,
  });

  /// Returns a new [CollaboratorJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CollaboratorJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CollaboratorJsonhalReadEmbedded(
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

    return other is CollaboratorJsonhalReadEmbedded &&
        other.organization == organization &&
        other.person == person &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (person == null ? 0 : person.hashCode) +
      (roles == null ? 0 : roles.hashCode);

  static List<CollaboratorJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <CollaboratorJsonhalReadEmbedded>[];
    }

    return json.fold(<CollaboratorJsonhalReadEmbedded>[],
        (List<CollaboratorJsonhalReadEmbedded> previousValue, element) {
      final CollaboratorJsonhalReadEmbedded? object =
          CollaboratorJsonhalReadEmbedded.fromJson(element);
      if (object is CollaboratorJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CollaboratorJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CollaboratorJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, CollaboratorJsonhalReadEmbedded>{},
        (Map<String, CollaboratorJsonhalReadEmbedded> previousValue, element) {
      final CollaboratorJsonhalReadEmbedded? object =
          CollaboratorJsonhalReadEmbedded.fromJson(element.value);
      if (object is CollaboratorJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CollaboratorJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<CollaboratorJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CollaboratorJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CollaboratorJsonhalReadEmbedded>>(
          key, CollaboratorJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CollaboratorJsonhalReadEmbedded[organization=$organization, person=$person, roles=$roles]';

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
