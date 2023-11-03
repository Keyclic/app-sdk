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

    return json.fold(<DocumentDataPermission>[],
        (List<DocumentDataPermission> previousValue, element) {
      final DocumentDataPermission? object =
          DocumentDataPermission.fromJson(element);
      if (object is DocumentDataPermission) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentDataPermission> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentDataPermission>{};
    }

    return json.entries.fold(<String, DocumentDataPermission>{},
        (Map<String, DocumentDataPermission> previousValue, element) {
      final DocumentDataPermission? object =
          DocumentDataPermission.fromJson(element.value);
      if (object is DocumentDataPermission) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentDataPermission-objects as value to a dart map
  static Map<String, List<DocumentDataPermission>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentDataPermission>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentDataPermission>>(
          key, DocumentDataPermission.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentDataPermission[targetGroup=$targetGroup]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && targetGroup != null) ||
          (keys?.contains(r'targetGroup') ?? false))
        r'targetGroup': targetGroup,
    };
  }
}
