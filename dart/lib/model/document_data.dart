//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentData {
  /// Returns a new [DocumentData] instance.
  DocumentData({
    @required this.container,
    @required this.file,
    @required this.permission,
    this.template,
    @required this.type,
  });

  /// Returns a new [DocumentData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentData(
      container: json[r'container'],
      file: DocumentDataFile.fromJson(json[r'file']),
      permission: DocumentDataPermission.fromJson(json[r'permission']),
      template: json[r'template'],
      type: json[r'type'],
    );
  }

  String container;

  DocumentDataFile file;

  DocumentDataPermission permission;

  String template;

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
      (container == null ? 0 : container.hashCode) +
      (file == null ? 0 : file.hashCode) +
      (permission == null ? 0 : permission.hashCode) +
      (template == null ? 0 : template.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<DocumentData> listFromJson(List<dynamic> json) {
    return <DocumentData>[
      if (json is List)
        for (dynamic value in json) DocumentData.fromJson(value),
    ];
  }

  static Map<String, DocumentData> mapFromJson(Map<String, dynamic> json) {
    return <String, DocumentData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentData-objects as value to a dart map
  static Map<String, List<DocumentData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentData>>{
      if (json is Map)
        for (final entry in json.entries)
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
