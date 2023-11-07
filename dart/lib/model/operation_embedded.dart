//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationEmbedded {
  /// Returns a new [OperationEmbedded] instance.
  OperationEmbedded({
    this.createdBy,
    this.documentTypes = const [],
    this.documents = const [],
    this.operator_,
    this.targetGroups = const [],
    this.workflow,
  });

  /// Returns a new [OperationEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationEmbedded(
      createdBy: json[r'createdBy'] is! Map
          ? null
          : Person.fromJson(json[r'createdBy']),
      documentTypes: DocumentType.listFromJson(json[r'documentTypes']),
      documents: Document.listFromJson(json[r'documents']),
      operator_:
          json[r'operator'] is! Map ? null : Person.fromJson(json[r'operator']),
      targetGroups: TargetGroup.listFromJson(json[r'targetGroups']),
      workflow: json[r'workflow'] is! Map
          ? null
          : OperationEmbeddedWorkflow.fromJson(json[r'workflow']),
    );
  }

  Person? createdBy;

  List<DocumentType>? documentTypes;

  List<Document>? documents;

  Person? operator_;

  List<TargetGroup>? targetGroups;

  OperationEmbeddedWorkflow? workflow;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbedded &&
        other.createdBy == createdBy &&
        DeepCollectionEquality.unordered()
            .equals(documentTypes, other.documentTypes) &&
        DeepCollectionEquality.unordered().equals(documents, other.documents) &&
        other.operator_ == operator_ &&
        DeepCollectionEquality.unordered()
            .equals(targetGroups, other.targetGroups) &&
        other.workflow == workflow;
  }

  @override
  int get hashCode =>
      (createdBy == null ? 0 : createdBy.hashCode) +
      (documentTypes == null ? 0 : documentTypes.hashCode) +
      (documents == null ? 0 : documents.hashCode) +
      (operator_ == null ? 0 : operator_.hashCode) +
      (targetGroups == null ? 0 : targetGroups.hashCode) +
      (workflow == null ? 0 : workflow.hashCode);

  static List<OperationEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationEmbedded>[];
    }

    return json.fold(<OperationEmbedded>[],
        (List<OperationEmbedded> previousValue, element) {
      final OperationEmbedded? object = OperationEmbedded.fromJson(element);
      if (object is OperationEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationEmbedded>{};
    }

    return json.entries.fold(<String, OperationEmbedded>{},
        (Map<String, OperationEmbedded> previousValue, element) {
      final OperationEmbedded? object =
          OperationEmbedded.fromJson(element.value);
      if (object is OperationEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationEmbedded-objects as value to a dart map
  static Map<String, List<OperationEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationEmbedded>>(
          key, OperationEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationEmbedded[createdBy=$createdBy, documentTypes=$documentTypes, documents=$documents, operator_=$operator_, targetGroups=$targetGroups, workflow=$workflow]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && createdBy != null) ||
          (keys?.contains(r'createdBy') ?? false))
        r'createdBy': createdBy?.toJson(),
      if ((keys == null && documentTypes != null) ||
          (keys?.contains(r'documentTypes') ?? false))
        r'documentTypes': documentTypes,
      if ((keys == null && documents != null) ||
          (keys?.contains(r'documents') ?? false))
        r'documents': documents,
      if ((keys == null && operator_ != null) ||
          (keys?.contains(r'operator_') ?? false))
        r'operator': operator_?.toJson(),
      if ((keys == null && targetGroups != null) ||
          (keys?.contains(r'targetGroups') ?? false))
        r'targetGroups': targetGroups,
      if ((keys == null && workflow != null) ||
          (keys?.contains(r'workflow') ?? false))
        r'workflow': workflow?.toJson(),
    };
  }
}
