//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PublicationJsonhalRead {
  /// Returns a new [PublicationJsonhalRead] instance.
  PublicationJsonhalRead({
    required this.links,
    required this.message,
    required this.read,
    required this.title,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.embedded,
  });

  /// Returns a new [PublicationJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PublicationJsonhalRead(
      links: PublicationJsonhalReadLinks.fromJson(json[r'_links'])!,
      message: json[r'message'],
      read: json[r'read'],
      title: json[r'title'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt'])!,
      updatedAt: mapToDateTime(json[r'updatedAt'])!,
      embedded: PublicationJsonhalReadEmbedded.fromJson(json[r'_embedded'])!,
    );
  }

  PublicationJsonhalReadLinks links;

  String message;

  int read;

  String title;

  /// The resource identifier.
  final String id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime updatedAt;

  PublicationJsonhalReadEmbedded embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationJsonhalRead &&
        other.links == links &&
        other.message == message &&
        other.read == read &&
        other.title == title &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      links.hashCode +
      message.hashCode +
      read.hashCode +
      title.hashCode +
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      embedded.hashCode;

  static List<PublicationJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PublicationJsonhalRead>[];
    }

    return json.fold(<PublicationJsonhalRead>[],
        (List<PublicationJsonhalRead> previousValue, element) {
      final PublicationJsonhalRead? object =
          PublicationJsonhalRead.fromJson(element);
      if (object is PublicationJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationJsonhalRead>{};
    }

    return json.entries.fold(<String, PublicationJsonhalRead>{},
        (Map<String, PublicationJsonhalRead> previousValue, element) {
      final PublicationJsonhalRead? object =
          PublicationJsonhalRead.fromJson(element.value);
      if (object is PublicationJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationJsonhalRead-objects as value to a dart map
  static Map<String, List<PublicationJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationJsonhalRead>>(
          key, PublicationJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationJsonhalRead[links=$links, message=$message, read=$read, title=$title, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'_links': links.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^links\.'))) {
          previousValue.add(element.split(RegExp(r'^links\.')).last);
        }

        return previousValue;
      })),
      r'message': message,
      r'read': read,
      r'title': title,
      r'id': id,
      r'createdAt': createdAt.toUtc().toIso8601String(),
      r'updatedAt': updatedAt.toUtc().toIso8601String(),
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
