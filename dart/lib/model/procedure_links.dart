//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinks {
  /// Returns a new [ProcedureLinks] instance.
  ProcedureLinks({
    this.createdBy,
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
      createdBy: ProcedureLinksCreatedBy.fromJson(json[r'createdBy']),
      document: ProcedureLinksDocument.fromJson(json[r'document']),
      self: ProcedureLinksSelf.fromJson(json[r'self']),
    );
  }

  ProcedureLinksCreatedBy? createdBy;

  ProcedureLinksDocument? document;

  ProcedureLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinks &&
        other.createdBy == createdBy &&
        other.document == document &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (createdBy == null ? 0 : createdBy.hashCode) +
      (document == null ? 0 : document.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<ProcedureLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinks>[];
    }

    return json.fold(<ProcedureLinks>[],
        (List<ProcedureLinks> previousValue, element) {
      final ProcedureLinks? object = ProcedureLinks.fromJson(element);
      if (object is ProcedureLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProcedureLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinks>{};
    }

    return json.entries.fold(<String, ProcedureLinks>{},
        (Map<String, ProcedureLinks> previousValue, element) {
      final ProcedureLinks? object = ProcedureLinks.fromJson(element.value);
      if (object is ProcedureLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProcedureLinks-objects as value to a dart map
  static Map<String, List<ProcedureLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProcedureLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProcedureLinks>>(
          key, ProcedureLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ProcedureLinks[createdBy=$createdBy, document=$document, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (createdBy != null) r'createdBy': createdBy,
      if (document != null) r'document': document,
      if (self != null) r'self': self,
    };
  }
}
