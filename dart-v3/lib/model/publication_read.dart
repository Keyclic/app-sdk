//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PublicationRead {
  /// Returns a new [PublicationRead] instance.
  PublicationRead({
    required this.author,
    required this.message,
    required this.organization,
    required this.place,
    this.read,
    required this.title,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [PublicationRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PublicationRead(
      author: PersonRead.fromJson(json[r'author'])!,
      message: json[r'message'],
      organization: json[r'organization'],
      place: PlaceRead.fromJson(json[r'place'])!,
      read: json[r'read'],
      title: json[r'title'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  PersonRead author;

  String message;

  final String organization;

  PlaceRead place;

  int? read;

  String title;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationRead &&
        other.author == author &&
        other.message == message &&
        other.organization == organization &&
        other.place == place &&
        other.read == read &&
        other.title == title &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      author.hashCode +
      message.hashCode +
      organization.hashCode +
      place.hashCode +
      (read == null ? 0 : read.hashCode) +
      title.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<PublicationRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PublicationRead>[];
    }

    return json.fold(<PublicationRead>[],
        (List<PublicationRead> previousValue, element) {
      final PublicationRead? object = PublicationRead.fromJson(element);
      if (object is PublicationRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationRead>{};
    }

    return json.entries.fold(<String, PublicationRead>{},
        (Map<String, PublicationRead> previousValue, element) {
      final PublicationRead? object = PublicationRead.fromJson(element.value);
      if (object is PublicationRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationRead-objects as value to a dart map
  static Map<String, List<PublicationRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationRead>>(
          key, PublicationRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationRead[author=$author, message=$message, organization=$organization, place=$place, read=$read, title=$title, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'author': author.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^author\.'))) {
          previousValue.add(element.split(RegExp(r'^author\.')).last);
        }

        return previousValue;
      })),
      r'message': message,
      r'organization': organization,
      r'place': place.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^place\.'))) {
          previousValue.add(element.split(RegExp(r'^place\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'read')) r'read': read,
      r'title': title,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
