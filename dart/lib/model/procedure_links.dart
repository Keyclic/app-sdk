//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinks {
  /// Returns a new [ProcedureLinks] instance.
  ProcedureLinks({
    this.document,
    this.self,
  });

  /// Returns a new [ProcedureLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinks(
      document: ProcedureLinksDocument.fromJson(json[r'document']),
      self: ProcedureLinksSelf.fromJson(json[r'self']),
    );
  }

  ProcedureLinksDocument? document;

  ProcedureLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinks &&
        other.document == document &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (document == null ? 0 : document.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<ProcedureLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinks>[];
    }
    return json
        .map((value) {
          return ProcedureLinks.fromJson(value);
        })
        .whereType<ProcedureLinks>()
        .toList();
  }

  static Map<String, ProcedureLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ProcedureLinks?>(key, ProcedureLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ProcedureLinks>;
  }

  // maps a json object with a list of ProcedureLinks-objects as value to a dart map
  static Map<String, List<ProcedureLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ProcedureLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ProcedureLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ProcedureLinks[document=$document, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (document != null) r'document': document,
      if (self != null) r'self': self,
    };
  }
}
