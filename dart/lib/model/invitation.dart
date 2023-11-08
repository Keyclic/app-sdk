//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Invitation {
  /// Returns a new [Invitation] instance.
  Invitation({
    this.embedded,
    this.links,
    this.createdAt,
    this.expiredAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Invitation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Invitation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? expiredAt =
        json[r'expiredAt'] == null ? null : DateTime.parse(json[r'expiredAt']);
    if (expiredAt != null && expiredAt.isUtc == false) {
      expiredAt = DateTime.parse('${json[r'expiredAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Invitation(
      embedded: InvitationEmbedded.fromJson(json[r'_embedded']),
      links: InvitationLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      expiredAt: expiredAt,
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  InvitationEmbedded? embedded;

  InvitationLinks? links;

  final DateTime? createdAt;

  DateTime? expiredAt;

  final String? id;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Invitation &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.expiredAt == expiredAt &&
        other.id == id &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (expiredAt == null ? 0 : expiredAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Invitation> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Invitation>[];
    }

    return json.fold(<Invitation>[], (List<Invitation> previousValue, element) {
      final Invitation? object = Invitation.fromJson(element);
      if (object is Invitation) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Invitation> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Invitation>{};
    }

    return json.entries.fold(<String, Invitation>{},
        (Map<String, Invitation> previousValue, element) {
      final Invitation? object = Invitation.fromJson(element.value);
      if (object is Invitation) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Invitation-objects as value to a dart map
  static Map<String, List<Invitation>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Invitation>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Invitation>>(
          key, Invitation.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Invitation[embedded=$embedded, links=$links, createdAt=$createdAt, expiredAt=$expiredAt, id=$id, type=$type, updatedAt=$updatedAt]';

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
      if ((keys == null && expiredAt != null) ||
          (keys?.contains(r'expiredAt') ?? false))
        r'expiredAt': expiredAt?.toUtc().toIso8601String(),
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
