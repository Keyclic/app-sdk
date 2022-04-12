//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ProcedureEmbedded {
  /// Returns a new [ProcedureEmbedded] instance.
  ProcedureEmbedded({
    this.document,
  });

  /// Returns a new [ProcedureEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ProcedureEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureEmbedded(
      document: Document.fromJson(json[r'document']),
    );
  }

  Document document;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureEmbedded && other.document == document;
  }

  @override
  int get hashCode => (document == null ? 0 : document.hashCode);

  static List<ProcedureEmbedded> listFromJson(List<dynamic> json) {
    return <ProcedureEmbedded>[
      if (json is List)
        for (dynamic value in json) ProcedureEmbedded.fromJson(value),
    ];
  }

  static Map<String, ProcedureEmbedded> mapFromJson(Map<String, dynamic> json) {
    return <String, ProcedureEmbedded>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ProcedureEmbedded.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ProcedureEmbedded-objects as value to a dart map
  static Map<String, List<ProcedureEmbedded>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ProcedureEmbedded>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ProcedureEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ProcedureEmbedded[document=$document]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (document != null) r'document': document,
    };
  }
}
