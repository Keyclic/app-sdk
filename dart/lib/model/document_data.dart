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
    this.type,
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

  String? type;

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
      (type == null ? 0 : type.hashCode);

  static List<DocumentData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentData>[];
    }

    return json.fold(<DocumentData>[],
        (List<DocumentData> previousValue, element) {
      final DocumentData? object = DocumentData.fromJson(element);
      if (object is DocumentData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentData>{};
    }

    return json.entries.fold(<String, DocumentData>{},
        (Map<String, DocumentData> previousValue, element) {
      final DocumentData? object = DocumentData.fromJson(element.value);
      if (object is DocumentData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentData-objects as value to a dart map
  static Map<String, List<DocumentData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentData>>(
          key, DocumentData.listFromJson(value));
    });
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
      if (type != null) r'type': type,
    };
  }
}
