//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentPatch {
  /// Returns a new [DocumentPatch] instance.
  DocumentPatch({
    this.body = const [],
    this.file,
    this.permission,
    this.text,
  });

  /// Returns a new [DocumentPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentPatch.fromJson(Map<String, dynamic> json) {
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
    );
  }

  List<Map<String, dynamic>> body;

  DocumentPatchFile file;

  DocumentPatchPermission permission;

  String text;

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
        other.text == text;
  }

  @override
  int get hashCode =>
      (body == null ? 0 : body.hashCode) +
      (file == null ? 0 : file.hashCode) +
      (permission == null ? 0 : permission.hashCode) +
      (text == null ? 0 : text.hashCode);

  static List<DocumentPatch> listFromJson(List<dynamic> json) {
    return <DocumentPatch>[
      if (json is List)
        for (dynamic value in json) DocumentPatch.fromJson(value),
    ];
  }

  static Map<String, DocumentPatch> mapFromJson(Map<String, dynamic> json) {
    return <String, DocumentPatch>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentPatch.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentPatch-objects as value to a dart map
  static Map<String, List<DocumentPatch>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentPatch>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentPatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentPatch[body=$body, file=$file, permission=$permission, text=$text]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (body != null) r'body': body,
      if (file != null) r'file': file,
      if (permission != null) r'permission': permission,
      if (text != null) r'text': text,
    };
  }
}
