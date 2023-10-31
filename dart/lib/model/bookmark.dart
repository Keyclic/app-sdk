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

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
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

    return json.fold(<Bookmark>[], (List<Bookmark> previousValue, element) {
      final Bookmark? object = Bookmark.fromJson(element);
      if (object is Bookmark) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Bookmark> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Bookmark>{};
    }

    return json.entries.fold(<String, Bookmark>{},
        (Map<String, Bookmark> previousValue, element) {
      final Bookmark? object = Bookmark.fromJson(element.value);
      if (object is Bookmark) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Bookmark-objects as value to a dart map
  static Map<String, List<Bookmark>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Bookmark>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Bookmark>>(
          key, Bookmark.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Bookmark[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
