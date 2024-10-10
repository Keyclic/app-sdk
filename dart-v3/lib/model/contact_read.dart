//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContactRead {
  /// Returns a new [ContactRead] instance.
  ContactRead({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.contactPoint,
    required this.organization,
    this.person,
    this.type,
  });

  /// Returns a new [ContactRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContactRead(
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      contactPoint: ContactPointRead.fromJson(json[r'contactPoint']),
      organization: OrganizationRead.fromJson(json[r'organization'])!,
      person: PersonRead.fromJson(json[r'person']),
      type: json[r'type'],
    );
  }

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  ContactPointRead? contactPoint;

  OrganizationRead organization;

  PersonRead? person;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContactRead &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.contactPoint == contactPoint &&
        other.organization == organization &&
        other.person == person &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      organization.hashCode +
      (person == null ? 0 : person.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ContactRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContactRead>[];
    }

    return json.fold(<ContactRead>[],
        (List<ContactRead> previousValue, element) {
      final ContactRead? object = ContactRead.fromJson(element);
      if (object is ContactRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContactRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContactRead>{};
    }

    return json.entries.fold(<String, ContactRead>{},
        (Map<String, ContactRead> previousValue, element) {
      final ContactRead? object = ContactRead.fromJson(element.value);
      if (object is ContactRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContactRead-objects as value to a dart map
  static Map<String, List<ContactRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContactRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContactRead>>(
          key, ContactRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContactRead[id=$id, createdAt=$createdAt, updatedAt=$updatedAt, contactPoint=$contactPoint, organization=$organization, person=$person, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
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
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
