//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Bookmark {
  /// Returns a new [Bookmark] instance.
  Bookmark({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Bookmark] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Bookmark? fromJson(Map<String, dynamic>? json) {
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

    return Bookmark(
      embedded: BookmarkEmbedded.fromJson(json[r'_embedded']),
      links: BookmarkLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  BookmarkEmbedded? embedded;

  BookmarkLinks? links;

  final DateTime? createdAt;

  final String? id;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Bookmark &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Bookmark> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Bookmark>[];
    }
    return json
        .map((value) {
          return Bookmark.fromJson(value);
        })
        .whereType<Bookmark>()
        .toList();
  }

  static Map<String, Bookmark> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Bookmark>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Bookmark?>(key, Bookmark.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Bookmark>;
  }

  // maps a json object with a list of Bookmark-objects as value to a dart map
  static Map<String, List<Bookmark>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Bookmark>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Bookmark.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Bookmark[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
