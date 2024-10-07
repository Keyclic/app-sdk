//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CollaboratorJsonhalRead {
  /// Returns a new [CollaboratorJsonhalRead] instance.
  CollaboratorJsonhalRead({
    required this.links,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.contactPoint,
  });

  /// Returns a new [CollaboratorJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CollaboratorJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CollaboratorJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links'])!,
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt'])!,
      updatedAt: mapToDateTime(json[r'updatedAt'])!,
      contactPoint: ContactPointJsonhalRead.fromJson(json[r'contactPoint'])!,
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

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CollaboratorJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.contactPoint == contactPoint;
  }

  @override
  int get hashCode =>
      links.hashCode +
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      contactPoint.hashCode;

  static List<CollaboratorJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <CollaboratorJsonhalRead>[];
    }

    return json.fold(<CollaboratorJsonhalRead>[],
        (List<CollaboratorJsonhalRead> previousValue, element) {
      final CollaboratorJsonhalRead? object =
          CollaboratorJsonhalRead.fromJson(element);
      if (object is CollaboratorJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CollaboratorJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CollaboratorJsonhalRead>{};
    }

    return json.entries.fold(<String, CollaboratorJsonhalRead>{},
        (Map<String, CollaboratorJsonhalRead> previousValue, element) {
      final CollaboratorJsonhalRead? object =
          CollaboratorJsonhalRead.fromJson(element.value);
      if (object is CollaboratorJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CollaboratorJsonhalRead-objects as value to a dart map
  static Map<String, List<CollaboratorJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CollaboratorJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CollaboratorJsonhalRead>>(
          key, CollaboratorJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CollaboratorJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, contactPoint=$contactPoint]';

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
    };
  }
}
