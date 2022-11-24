//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentEmbedded {
  /// Returns a new [DocumentEmbedded] instance.
  DocumentEmbedded({
    this.container,
    this.createdBy,
    this.signers = const [],
    this.stateTransitions = const [],
    this.type,
  });

  /// Returns a new [DocumentEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentEmbedded(
      container: json[r'container'] == null
          ? null
          : Map<String, dynamic>.from(json[r'container']),
      createdBy: Person.fromJson(json[r'createdBy']),
      signers: Signer.listFromJson(json[r'signers']),
      stateTransitions: List<String>.from(json[r'stateTransitions'] ?? []),
      type: DocumentType.fromJson(json[r'type']),
    );
  }

  Map<String, dynamic>? container;

  Person? createdBy;

  List<Signer>? signers;

  List<String>? stateTransitions;

  DocumentType? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentEmbedded &&
        other.container == container &&
        other.createdBy == createdBy &&
        DeepCollectionEquality.unordered().equals(signers, other.signers) &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (container == null ? 0 : container.hashCode) +
      (createdBy == null ? 0 : createdBy.hashCode) +
      (signers == null ? 0 : signers.hashCode) +
      (stateTransitions == null ? 0 : stateTransitions.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<DocumentEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentEmbedded>[];
    }

    return json.fold(<DocumentEmbedded>[],
        (List<DocumentEmbedded> previousValue, element) {
      final DocumentEmbedded? object = DocumentEmbedded.fromJson(element);
      if (object is DocumentEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentEmbedded>{};
    }

    return json.entries.fold(<String, DocumentEmbedded>{},
        (Map<String, DocumentEmbedded> previousValue, element) {
      final DocumentEmbedded? object = DocumentEmbedded.fromJson(element.value);
      if (object is DocumentEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentEmbedded-objects as value to a dart map
  static Map<String, List<DocumentEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentEmbedded>>(
          key, DocumentEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentEmbedded[container=$container, createdBy=$createdBy, signers=$signers, stateTransitions=$stateTransitions, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (container != null) r'container': container,
      if (createdBy != null) r'createdBy': createdBy,
      if (signers != null) r'signers': signers,
      if (stateTransitions != null) r'stateTransitions': stateTransitions,
      if (type != null) r'type': type,
    };
  }
}
