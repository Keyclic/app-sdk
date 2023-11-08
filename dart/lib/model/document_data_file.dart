//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentDataFile {
  /// Returns a new [DocumentDataFile] instance.
  DocumentDataFile({
    this.content,
    this.contentType,
    this.name,
  });

  /// Returns a new [DocumentDataFile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentDataFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentDataFile(
      content: json[r'content'],
      contentType: json[r'contentType'],
      name: json[r'name'],
    );
  }

  String? content;

  String? contentType;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentDataFile &&
        other.content == content &&
        other.contentType == contentType &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (content == null ? 0 : content.hashCode) +
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<DocumentDataFile> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <DocumentDataFile>[];
    }

    return json.fold(<DocumentDataFile>[],
        (List<DocumentDataFile> previousValue, element) {
      final DocumentDataFile? object = DocumentDataFile.fromJson(element);
      if (object is DocumentDataFile) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentDataFile> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentDataFile>{};
    }

    return json.entries.fold(<String, DocumentDataFile>{},
        (Map<String, DocumentDataFile> previousValue, element) {
      final DocumentDataFile? object = DocumentDataFile.fromJson(element.value);
      if (object is DocumentDataFile) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentDataFile-objects as value to a dart map
  static Map<String, List<DocumentDataFile>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentDataFile>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentDataFile>>(
          key, DocumentDataFile.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentDataFile[content=$content, contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && content != null) ||
          (keys?.contains(r'content') ?? false))
        r'content': content,
      if ((keys == null && contentType != null) ||
          (keys?.contains(r'contentType') ?? false))
        r'contentType': contentType,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
    };
  }
}
