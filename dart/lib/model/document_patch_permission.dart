//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentPatchPermission {
  /// Returns a new [DocumentPatchPermission] instance.
  DocumentPatchPermission({
    this.targetGroup,
  });

  /// Returns a new [DocumentPatchPermission] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentPatchPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentPatchPermission(
      targetGroup: json[r'targetGroup'],
    );
  }

  String targetGroup;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatchPermission && other.targetGroup == targetGroup;
  }

  @override
  int get hashCode => (targetGroup == null ? 0 : targetGroup.hashCode);

  static List<DocumentPatchPermission> listFromJson(List<dynamic> json) {
    return <DocumentPatchPermission>[
      if (json is List)
        for (dynamic value in json) DocumentPatchPermission.fromJson(value),
    ];
  }

  static Map<String, DocumentPatchPermission> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DocumentPatchPermission>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentPatchPermission.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentPatchPermission-objects as value to a dart map
  static Map<String, List<DocumentPatchPermission>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentPatchPermission>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentPatchPermission.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentPatchPermission[targetGroup=$targetGroup]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (targetGroup != null) r'targetGroup': targetGroup,
    };
  }
}
