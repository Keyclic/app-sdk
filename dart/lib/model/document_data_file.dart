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

  static List<DocumentDataFile> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentDataFile>[];
    }
    return json
        .map((value) {
          return DocumentDataFile.fromJson(value);
        })
        .whereType<DocumentDataFile>()
        .toList();
  }

  static Map<String, DocumentDataFile> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentDataFile>{};
    }

    final map = json.map((key, value) => MapEntry<String, DocumentDataFile?>(
        key, DocumentDataFile.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentDataFile>;
  }

  // maps a json object with a list of DocumentDataFile-objects as value to a dart map
  static Map<String, List<DocumentDataFile>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentDataFile>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentDataFile.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentDataFile[content=$content, contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (content != null) r'content': content,
      if (contentType != null) r'contentType': contentType,
      if (name != null) r'name': name,
    };
  }
}
