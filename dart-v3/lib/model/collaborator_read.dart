//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CollaboratorRead {
  /// Returns a new [CollaboratorRead] instance.
  CollaboratorRead({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.contactPoint,
  });

  /// Returns a new [CollaboratorRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CollaboratorRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CollaboratorRead(
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      contactPoint: ContactPointRead.fromJson(json[r'contactPoint']),
    );
  }

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  ContactPointRead? contactPoint;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CollaboratorRead &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.contactPoint == contactPoint;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode);

  static List<CollaboratorRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <CollaboratorRead>[];
    }

    return json.fold(<CollaboratorRead>[],
        (List<CollaboratorRead> previousValue, element) {
      final CollaboratorRead? object = CollaboratorRead.fromJson(element);
      if (object is CollaboratorRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CollaboratorRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CollaboratorRead>{};
    }

    return json.entries.fold(<String, CollaboratorRead>{},
        (Map<String, CollaboratorRead> previousValue, element) {
      final CollaboratorRead? object = CollaboratorRead.fromJson(element.value);
      if (object is CollaboratorRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CollaboratorRead-objects as value to a dart map
  static Map<String, List<CollaboratorRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CollaboratorRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CollaboratorRead>>(
          key, CollaboratorRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CollaboratorRead[id=$id, createdAt=$createdAt, updatedAt=$updatedAt, contactPoint=$contactPoint]';

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
    };
  }
}
