//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContactJsonhalRead {
  /// Returns a new [ContactJsonhalRead] instance.
  ContactJsonhalRead({
    required this.links,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.contactPoint,
    this.type,
    required this.embedded,
  });

  /// Returns a new [ContactJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContactJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links'])!,
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt'])!,
      updatedAt: mapToDateTime(json[r'updatedAt'])!,
      contactPoint: ContactPointJsonhalRead.fromJson(json[r'contactPoint'])!,
      type: json[r'type'],
      embedded: ContactJsonhalReadEmbedded.fromJson(json[r'_embedded'])!,
    );
  }

  AssetTypeJsonhalReadLinks links;

  /// The resource identifier.
  final String id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime updatedAt;

  ContactPointJsonhalRead contactPoint;

  final String? type;

  ContactJsonhalReadEmbedded embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContactJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.contactPoint == contactPoint &&
        other.type == type &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      links.hashCode +
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      contactPoint.hashCode +
      (type == null ? 0 : type.hashCode) +
      embedded.hashCode;

  static List<ContactJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContactJsonhalRead>[];
    }

    return json.fold(<ContactJsonhalRead>[],
        (List<ContactJsonhalRead> previousValue, element) {
      final ContactJsonhalRead? object = ContactJsonhalRead.fromJson(element);
      if (object is ContactJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContactJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContactJsonhalRead>{};
    }

    return json.entries.fold(<String, ContactJsonhalRead>{},
        (Map<String, ContactJsonhalRead> previousValue, element) {
      final ContactJsonhalRead? object =
          ContactJsonhalRead.fromJson(element.value);
      if (object is ContactJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContactJsonhalRead-objects as value to a dart map
  static Map<String, List<ContactJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContactJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContactJsonhalRead>>(
          key, ContactJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContactJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, contactPoint=$contactPoint, type=$type, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'_links': links.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^links\.'))) {
          previousValue.add(element.split(RegExp(r'^links\.')).last);
        }

        return previousValue;
      })),
      r'id': id,
      r'createdAt': createdAt.toUtc().toIso8601String(),
      r'updatedAt': updatedAt.toUtc().toIso8601String(),
      r'contactPoint': contactPoint.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^contactPoint\.'))) {
          previousValue.add(element.split(RegExp(r'^contactPoint\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'type')) r'type': type,
      r'_embedded': embedded.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^embedded\.'))) {
          previousValue.add(element.split(RegExp(r'^embedded\.')).last);
        }

        return previousValue;
      })),
    };
  }
}
