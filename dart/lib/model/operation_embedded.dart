part of keyclic_sdk_api.api;

class OperationEmbedded {
  OperationEmbedded({
    this.createdBy,
    this.documentTypes,
    this.documents,
    this.operator_,
    this.workflow,
  });

  factory OperationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationEmbedded(
      createdBy: Person.fromJson(json['createdBy']),
      documentTypes: DocumentType.listFromJson(json['documentTypes']),
      documents: Document.listFromJson(json['documents']),
      operator_: Person.fromJson(json['operator']),
      workflow: OperationEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  Person createdBy;

  List<DocumentType> documentTypes;

  List<Document> documents;

  Person operator_;

  OperationEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbedded &&
        runtimeType == other.runtimeType &&
        createdBy == other.createdBy &&
        DeepCollectionEquality.unordered()
            .equals(documentTypes, other.documentTypes) &&
        DeepCollectionEquality.unordered().equals(documents, other.documents) &&
        operator_ == other.operator_ &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (documentTypes is List && documentTypes.isNotEmpty) {
      hashCode ^= documentTypes
          .map((DocumentType element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (documents is List && documents.isNotEmpty) {
      hashCode ^= documents
          .map((Document element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= createdBy?.hashCode ?? 0;
    hashCode ^= operator_?.hashCode ?? 0;
    hashCode ^= workflow?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationEmbedded.fromJson(value))
            ?.toList() ??
        <OperationEmbedded>[];
  }

  static Map<String, OperationEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, OperationEmbedded>((String key, dynamic value) {
          return MapEntry(key, OperationEmbedded.fromJson(value));
        }) ??
        <String, OperationEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdBy != null) 'createdBy': createdBy.toJson(),
      if (documentTypes != null) 'documentTypes': documentTypes,
      if (documents != null) 'documents': documents,
      if (operator_ != null) 'operator': operator_.toJson(),
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationEmbedded[createdBy=$createdBy, documentTypes=$documentTypes, documents=$documents, operator_=$operator_, workflow=$workflow, ]';
  }
}
