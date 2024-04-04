//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentData {
  /// Returns a new [DocumentData] instance.
  DocumentData({
    this.container,
    this.file,
    this.permission,
    this.template,
    this.type,
  });

  /// Returns a new [DocumentData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  String? container;

  DocumentDataFile? file;

  DocumentDataPermission? permission;

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
      (container == null ? 0 : container.hashCode) +
      (file == null ? 0 : file.hashCode) +
      (permission == null ? 0 : permission.hashCode) +
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'container')) r'container': container,
      if (keys == null || keys.any((key) => RegExp(r'^file\.').hasMatch(key)))
        r'file': file?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^file\.'))) {
            previousValue.add(element.split(RegExp(r'^file\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^permission\.').hasMatch(key)))
        r'permission': permission?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^permission\.'))) {
            previousValue.add(element.split(RegExp(r'^permission\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'template')) r'template': template,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
