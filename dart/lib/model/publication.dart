//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Publication {
  /// Returns a new [Publication] instance.
  Publication({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    @required this.message,
    @required this.read,
    @required this.title,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Publication] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Publication.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
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

  PublicationEmbedded embedded;

  PublicationLinks links;

  DateTime createdAt;

  String id;

  String message;

  int read;

  String title;

  String type;

  DateTime updatedAt;

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
      (message == null ? 0 : message.hashCode) +
      (read == null ? 0 : read.hashCode) +
      (title == null ? 0 : title.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Publication> listFromJson(List<dynamic> json) {
    return <Publication>[
      if (json is List)
        for (dynamic value in json) Publication.fromJson(value),
    ];
  }

  static Map<String, Publication> mapFromJson(Map<String, dynamic> json) {
    return <String, Publication>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Publication.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Publication-objects as value to a dart map
  static Map<String, List<Publication>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<Publication>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Publication.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Publication[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, message=$message, read=$read, title=$title, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      r'message': message,
      r'read': read,
      r'title': title,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
