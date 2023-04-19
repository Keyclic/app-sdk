//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentPatch {
  /// Returns a new [DocumentPatch] instance.
  DocumentPatch({
    this.body = const [],
    this.file,
    this.permission,
    this.text,
    this.tags = const [],
  });

  /// Returns a new [DocumentPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentPatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentPatch(
      body: json[r'body'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'body'])
          : [],
      file: DocumentPatchFile.fromJson(json[r'file']),
      permission: DocumentPatchPermission.fromJson(json[r'permission']),
      text: json[r'text'],
      tags: List<String>.from(json[r'tags'] ?? []),
    );
  }

  List<Map<String, dynamic>>? body;

  DocumentPatchFile? file;

  DocumentPatchPermission? permission;

  String? text;

  List<String>? tags;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatch &&
        DeepCollectionEquality.unordered().equals(body, other.body) &&
        other.file == file &&
        other.permission == permission &&
        other.text == text &&
        DeepCollectionEquality.unordered().equals(tags, other.tags);
  }

  @override
  int get hashCode =>
      (body == null ? 0 : body.hashCode) +
      (file == null ? 0 : file.hashCode) +
      (permission == null ? 0 : permission.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (tags == null ? 0 : tags.hashCode);

  static List<DocumentPatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentPatch>[];
    }

    return json.fold(<DocumentPatch>[],
        (List<DocumentPatch> previousValue, element) {
      final DocumentPatch? object = DocumentPatch.fromJson(element);
      if (object is DocumentPatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentPatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentPatch>{};
    }

    return json.entries.fold(<String, DocumentPatch>{},
        (Map<String, DocumentPatch> previousValue, element) {
      final DocumentPatch? object = DocumentPatch.fromJson(element.value);
      if (object is DocumentPatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentPatch-objects as value to a dart map
  static Map<String, List<DocumentPatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentPatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentPatch>>(
          key, DocumentPatch.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentPatch[body=$body, file=$file, permission=$permission, text=$text, tags=$tags]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (body != null) r'body': body,
      if (file != null) r'file': file,
      if (permission != null) r'permission': permission,
      if (text != null) r'text': text,
      if (tags != null) r'tags': tags,
    };
  }
}
