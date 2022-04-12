//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceEmbedded {
  /// Returns a new [PlaceEmbedded] instance.
  PlaceEmbedded({
    this.documentTypes = const [],
    this.organization,
    this.path = const [],
    this.targetGroups = const [],
    this.workflow,
  });

  /// Returns a new [PlaceEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceEmbedded(
      documentTypes: DocumentType.listFromJson(json[r'documentTypes']),
      organization: Organization.fromJson(json[r'organization']),
      path: NodePath.listFromJson(json[r'path']),
      targetGroups:
          PlaceEmbeddedTargetGroups.listFromJson(json[r'targetGroups']),
      workflow: OperationEmbeddedWorkflow.fromJson(json[r'workflow']),
    );
  }

  List<DocumentType>? documentTypes;

  Organization? organization;

  List<NodePath>? path;

  List<PlaceEmbeddedTargetGroups>? targetGroups;

  OperationEmbeddedWorkflow? workflow;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceEmbedded &&
        DeepCollectionEquality.unordered()
            .equals(documentTypes, other.documentTypes) &&
        other.organization == organization &&
        DeepCollectionEquality.unordered().equals(path, other.path) &&
        DeepCollectionEquality.unordered()
            .equals(targetGroups, other.targetGroups) &&
        other.workflow == workflow;
  }

  @override
  int get hashCode =>
      (documentTypes == null ? 0 : documentTypes.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (path == null ? 0 : path.hashCode) +
      (targetGroups == null ? 0 : targetGroups.hashCode) +
      (workflow == null ? 0 : workflow.hashCode);

  static List<PlaceEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceEmbedded>[];
    }
    return json
        .map((value) {
          return PlaceEmbedded.fromJson(value);
        })
        .whereType<PlaceEmbedded>()
        .toList();
  }

  static Map<String, PlaceEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceEmbedded>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlaceEmbedded?>(key, PlaceEmbedded.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlaceEmbedded>;
  }

  // maps a json object with a list of PlaceEmbedded-objects as value to a dart map
  static Map<String, List<PlaceEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlaceEmbedded>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlaceEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlaceEmbedded[documentTypes=$documentTypes, organization=$organization, path=$path, targetGroups=$targetGroups, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (documentTypes != null) r'documentTypes': documentTypes,
      if (organization != null) r'organization': organization,
      if (path != null) r'path': path,
      if (targetGroups != null) r'targetGroups': targetGroups,
      if (workflow != null) r'workflow': workflow,
    };
  }
}
