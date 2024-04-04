//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureEmbedded {
  /// Returns a new [ProcedureEmbedded] instance.
  ProcedureEmbedded({
    this.document,
  });

  /// Returns a new [ProcedureEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ProcedureEmbedded(
      document: Document.fromJson(json[r'document']),
    );
  }

  Document? document;

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

  static List<ProcedureEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureEmbedded>[];
    }

    return json.fold(<ProcedureEmbedded>[],
        (List<ProcedureEmbedded> previousValue, element) {
      final ProcedureEmbedded? object = ProcedureEmbedded.fromJson(element);
      if (object is ProcedureEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProcedureEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureEmbedded>{};
    }

    return json.entries.fold(<String, ProcedureEmbedded>{},
        (Map<String, ProcedureEmbedded> previousValue, element) {
      final ProcedureEmbedded? object =
          ProcedureEmbedded.fromJson(element.value);
      if (object is ProcedureEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProcedureEmbedded-objects as value to a dart map
  static Map<String, List<ProcedureEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProcedureEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProcedureEmbedded>>(
          key, ProcedureEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'ProcedureEmbedded[document=$document]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^document\.').hasMatch(key)))
        r'document': document?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^document\.'))) {
            previousValue.add(element.split(RegExp(r'^document\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
