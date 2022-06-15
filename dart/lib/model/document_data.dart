//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentData {
  /// Returns a new [DocumentData] instance.
  DocumentData({
    required this.container,
    required this.file,
    required this.permission,
    this.template,
    required this.type,
  });

  /// Returns a new [DocumentData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentData(
      container: json[r'container'],
      file: DocumentDataFile.fromJson(json[r'file'])!,
      permission: DocumentDataPermission.fromJson(json[r'permission'])!,
      template: json[r'template'],
      type: json[r'type'],
    );
  }

  String container;

  DocumentDataFile file;

  DocumentDataPermission permission;

  String? template;

  String type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentData &&
        other.container == container &&
        other.file == file &&
        other.permission == permission &&
        other.template == template &&
        other.type == type;
  }

  @override
  int get hashCode =>
      container.hashCode +
      file.hashCode +
      permission.hashCode +
      (template == null ? 0 : template.hashCode) +
      type.hashCode;

  static List<DocumentData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentData>[];
    }
    return json
        .map((value) {
          return DocumentData.fromJson(value);
        })
        .whereType<DocumentData>()
        .toList();
  }

  static Map<String, DocumentData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentData?>(key, DocumentData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentData>;
  }

  // maps a json object with a list of DocumentData-objects as value to a dart map
  static Map<String, List<DocumentData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentData[container=$container, file=$file, permission=$permission, template=$template, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'container': container,
      r'file': file,
      r'permission': permission,
      if (template != null) r'template': template,
      r'type': type,
    };
  }
}
