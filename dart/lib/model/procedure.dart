//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Procedure {
  /// Returns a new [Procedure] instance.
  Procedure({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.mode,
    this.state,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Procedure] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Procedure.fromJson(Map<String, dynamic> json) {
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

    return Procedure(
      embedded: ProcedureEmbedded.fromJson(json[r'_embedded']),
      links: ProcedureLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      mode: json[r'mode'],
      state: json[r'state'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ProcedureEmbedded embedded;

  ProcedureLinks links;

  DateTime createdAt;

  String id;

  String mode;

  String state;

  String type;

  DateTime updatedAt;

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
        other.mode == mode &&
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
      (mode == null ? 0 : mode.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Procedure> listFromJson(List<dynamic> json) {
    return <Procedure>[
      if (json is List)
        for (dynamic value in json) Procedure.fromJson(value),
    ];
  }

  static Map<String, Procedure> mapFromJson(Map<String, dynamic> json) {
    return <String, Procedure>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Procedure.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Procedure-objects as value to a dart map
  static Map<String, List<Procedure>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<Procedure>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Procedure.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Procedure[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, mode=$mode, state=$state, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (mode != null) r'mode': mode,
      if (state != null) r'state': state,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
