//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceEmbedded {
  /// Returns a new [PlaceEmbedded] instance.
  PlaceEmbedded({
    this.documentTypes,
    this.organization,
    this.path,
    this.targetGroups,
    this.workflow,
  });

  /// Returns a new [PlaceEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceEmbedded(
      documentTypes: DocumentType.listFromJson(json[r'documentTypes']),
      organization: Organization.fromJson(json[r'organization']),
      path: NodePath.listFromJson(json[r'path']),
      targetGroups: TargetGroup.listFromJson(json[r'targetGroups']),
      workflow: OperationEmbeddedWorkflow.fromJson(json[r'workflow']),
    );
  }

  List<DocumentType>? documentTypes;

  Organization? organization;

  List<NodePath>? path;

  List<TargetGroup>? targetGroups;

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

    return json.fold(<PlaceEmbedded>[],
        (List<PlaceEmbedded> previousValue, element) {
      final PlaceEmbedded? object = PlaceEmbedded.fromJson(element);
      if (object is PlaceEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceEmbedded>{};
    }

    return json.entries.fold(<String, PlaceEmbedded>{},
        (Map<String, PlaceEmbedded> previousValue, element) {
      final PlaceEmbedded? object = PlaceEmbedded.fromJson(element.value);
      if (object is PlaceEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceEmbedded-objects as value to a dart map
  static Map<String, List<PlaceEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceEmbedded>>(
          key, PlaceEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceEmbedded[documentTypes=$documentTypes, organization=$organization, path=$path, targetGroups=$targetGroups, workflow=$workflow]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'documentTypes'))
        r'documentTypes': documentTypes,
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'path')) r'path': path,
      if (keys == null || keys.contains(r'targetGroups'))
        r'targetGroups': targetGroups,
      if (keys == null ||
          keys.any((key) => RegExp(r'^workflow\.').hasMatch(key)))
        r'workflow': workflow?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^workflow\.'))) {
            previousValue.add(element.split(RegExp(r'^workflow\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
