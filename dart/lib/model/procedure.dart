part of keyclic_sdk_api.api;

class Procedure {
  Procedure({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.state,
    this.type,
    this.updatedAt,
  });

  factory Procedure.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Procedure(
      embedded: ProcedureEmbedded.fromJson(json['_embedded']),
      links: ProcedureLinks.fromJson(json['_links']),
      createdAt: createdAt,
      id: json['id'],
      state: json['state'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  ProcedureEmbedded embedded;

  ProcedureLinks links;

  DateTime createdAt;

  String id;

  String state;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Procedure &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        createdAt == other.createdAt &&
        id == other.id &&
        state == other.state &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= state?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Procedure> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Procedure.fromJson(value))?.toList() ??
        <Procedure>[];
  }

  static Map<String, Procedure> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Procedure>((String key, dynamic value) {
          return MapEntry(key, Procedure.fromJson(value));
        }) ??
        <String, Procedure>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded.toJson(),
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (state != null) 'state': state,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Procedure[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, state=$state, type=$type, updatedAt=$updatedAt, ]';
  }
}
