//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MemberRead {
  /// Returns a new [MemberRead] instance.
  MemberRead({
    this.contactPoint,
    required this.organization,
    this.person,
    this.roles,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.type,
  });

  /// Returns a new [MemberRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MemberRead(
      contactPoint: ContactPointRead.fromJson(json[r'contactPoint']),
      organization: OrganizationRead.fromJson(json[r'organization'])!,
      person: PersonRead.fromJson(json[r'person']),
      roles: RoleRead.listFromJson(json[r'roles']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      type: json[r'type'],
    );
  }

  ContactPointRead? contactPoint;

  OrganizationRead organization;

  PersonRead? person;

  List<RoleRead>? roles;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberRead &&
        other.contactPoint == contactPoint &&
        other.organization == organization &&
        other.person == person &&
        DeepCollectionEquality.unordered().equals(roles, other.roles) &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      organization.hashCode +
      (person == null ? 0 : person.hashCode) +
      (roles == null ? 0 : roles.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<MemberRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <MemberRead>[];
    }

    return json.fold(<MemberRead>[], (List<MemberRead> previousValue, element) {
      final MemberRead? object = MemberRead.fromJson(element);
      if (object is MemberRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberRead>{};
    }

    return json.entries.fold(<String, MemberRead>{},
        (Map<String, MemberRead> previousValue, element) {
      final MemberRead? object = MemberRead.fromJson(element.value);
      if (object is MemberRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberRead-objects as value to a dart map
  static Map<String, List<MemberRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberRead>>(
          key, MemberRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberRead[contactPoint=$contactPoint, organization=$organization, person=$person, roles=$roles, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^contactPoint\.').hasMatch(key)))
        r'contactPoint': contactPoint?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^contactPoint\.'))) {
            previousValue.add(element.split(RegExp(r'^contactPoint\.')).last);
          }

          return previousValue;
        })),
      r'organization': organization.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
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
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
