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

    return json.fold(<DocumentPermission>[],
        (List<DocumentPermission> previousValue, element) {
      final DocumentPermission? object = DocumentPermission.fromJson(element);
      if (object is DocumentPermission) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentPermission> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentPermission>{};
    }

    return json.entries.fold(<String, DocumentPermission>{},
        (Map<String, DocumentPermission> previousValue, element) {
      final DocumentPermission? object =
          DocumentPermission.fromJson(element.value);
      if (object is DocumentPermission) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentPermission-objects as value to a dart map
  static Map<String, List<DocumentPermission>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentPermission>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentPermission>>(
          key, DocumentPermission.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentPermission[targetGroup=$targetGroup]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && targetGroup != null) ||
          (keys?.contains(r'targetGroup') ?? false))
        r'targetGroup': targetGroup,
    };
  }
}
