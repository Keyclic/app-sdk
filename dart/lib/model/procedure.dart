//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Procedure {
  /// Returns a new [Procedure] instance.
  Procedure({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.state,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Procedure] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Procedure? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt = DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt = DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Procedure(
      embedded: ProcedureEmbedded.fromJson(json[r'_embedded']),
      links: ProcedureLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      state: json[r'state'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ProcedureEmbedded? embedded;

  ProcedureLinks? links;

  final DateTime? createdAt;

  final String? id;

  String? state;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Procedure &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.state == state &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Procedure> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Procedure>[];
    }
    return json
        .map((value) {
          return Procedure.fromJson(value);
        })
        .whereType<Procedure>()
        .toList();
  }

  static Map<String, Procedure> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Procedure>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Procedure?>(key, Procedure.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Procedure>;
  }

  // maps a json object with a list of Procedure-objects as value to a dart map
  static Map<String, List<Procedure>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Procedure>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Procedure.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Procedure[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, state=$state, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (state != null) r'state': state,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
