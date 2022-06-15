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

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? expiredAt = json[r'expiredAt'] is String
        ? DateTime.parse(json[r'expiredAt'])
        : null;
    if (expiredAt is DateTime && expiredAt.isUtc == false) {
      expiredAt = DateTime.parse('${json[r'expiredAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
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
    return json
        .map((value) {
          return Invitation.fromJson(value);
        })
        .whereType<Invitation>()
        .toList();
  }

  static Map<String, Invitation> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Invitation>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Invitation?>(key, Invitation.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Invitation>;
  }

  // maps a json object with a list of Invitation-objects as value to a dart map
  static Map<String, List<Invitation>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Invitation>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Invitation.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Invitation[embedded=$embedded, links=$links, createdAt=$createdAt, expiredAt=$expiredAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (expiredAt != null) r'expiredAt': expiredAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
