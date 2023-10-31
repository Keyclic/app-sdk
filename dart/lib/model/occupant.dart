//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Occupant {
  /// Returns a new [Occupant] instance.
  Occupant({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Occupant] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Occupant? fromJson(Map<String, dynamic>? json) {
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

    return Occupant(
      embedded: BookmarkEmbedded.fromJson(json[r'_embedded']),
      links: OccupantLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  BookmarkEmbedded? embedded;

  OccupantLinks? links;

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

    return other is Occupant &&
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

  static List<Occupant> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Occupant>[];
    }

    return json.fold(<Occupant>[], (List<Occupant> previousValue, element) {
      final Occupant? object = Occupant.fromJson(element);
      if (object is Occupant) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Occupant> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Occupant>{};
    }

    return json.entries.fold(<String, Occupant>{},
        (Map<String, Occupant> previousValue, element) {
      final Occupant? object = Occupant.fromJson(element.value);
      if (object is Occupant) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Occupant-objects as value to a dart map
  static Map<String, List<Occupant>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Occupant>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Occupant>>(
          key, Occupant.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Occupant[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

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
