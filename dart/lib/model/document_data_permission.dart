//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentDataPermission {
  /// Returns a new [DocumentDataPermission] instance.
  DocumentDataPermission({
    this.targetGroup,
  });

  /// Returns a new [DocumentDataPermission] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentDataPermission? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentDataPermission(
      targetGroup: json[r'targetGroup'],
    );
  }

  String? targetGroup;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentDataPermission && other.targetGroup == targetGroup;
  }

  @override
  int get hashCode => (targetGroup == null ? 0 : targetGroup.hashCode);

  static List<DocumentDataPermission> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentDataPermission>[];
    }
    return json
        .map((value) {
          return DocumentDataPermission.fromJson(value);
        })
        .whereType<DocumentDataPermission>()
        .toList();
  }

  static Map<String, DocumentDataPermission> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentDataPermission>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentDataPermission?>(
            key, DocumentDataPermission.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentDataPermission>;
  }

  // maps a json object with a list of DocumentDataPermission-objects as value to a dart map
  static Map<String, List<DocumentDataPermission>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentDataPermission>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentDataPermission.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentDataPermission[targetGroup=$targetGroup]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (targetGroup != null) r'targetGroup': targetGroup,
    };
  }
}
