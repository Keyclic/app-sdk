//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Publication {
  /// Returns a new [Publication] instance.
  Publication({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    required this.message,
    required this.read,
    required this.title,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Publication] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Publication? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Publication(
      embedded: PublicationEmbedded.fromJson(json[r'_embedded']),
      links: PublicationLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      message: json[r'message'],
      read: json[r'read'],
      title: json[r'title'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  PublicationEmbedded? embedded;

  PublicationLinks? links;

  final DateTime? createdAt;

  final String? id;

  String message;

  int read;

  String title;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Publication &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.message == message &&
        other.read == read &&
        other.title == title &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      message.hashCode +
      read.hashCode +
      title.hashCode +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Publication> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Publication>[];
    }

    return json.fold(<Publication>[],
        (List<Publication> previousValue, element) {
      final Publication? object = Publication.fromJson(element);
      if (object is Publication) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Publication> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Publication>{};
    }

    return json.entries.fold(<String, Publication>{},
        (Map<String, Publication> previousValue, element) {
      final Publication? object = Publication.fromJson(element.value);
      if (object is Publication) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Publication-objects as value to a dart map
  static Map<String, List<Publication>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Publication>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Publication>>(
          key, Publication.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Publication[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, message=$message, read=$read, title=$title, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      r'message': message,
      r'read': read,
      r'title': title,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
