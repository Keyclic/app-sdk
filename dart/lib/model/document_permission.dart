//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentPermission {
  /// Returns a new [DocumentPermission] instance.
  DocumentPermission({
    this.targetGroup,
  });

  /// Returns a new [DocumentPermission] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentPermission? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentPermission(
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

    return other is DocumentPermission && other.targetGroup == targetGroup;
  }

  @override
  int get hashCode => (targetGroup == null ? 0 : targetGroup.hashCode);

  static List<DocumentPermission> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentPermission>[];
    }
    return json
        .map((value) {
          return DocumentPermission.fromJson(value);
        })
        .whereType<DocumentPermission>()
        .toList();
  }

  static Map<String, DocumentPermission> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentPermission>{};
    }

    final map = json.map((key, value) => MapEntry<String, DocumentPermission?>(
        key, DocumentPermission.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentPermission>;
  }

  // maps a json object with a list of DocumentPermission-objects as value to a dart map
  static Map<String, List<DocumentPermission>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentPermission>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentPermission.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentPermission[targetGroup=$targetGroup]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (targetGroup != null) r'targetGroup': targetGroup,
    };
  }
}
