part of keyclic_sdk_api.api;

class DocumentPatch {
  DocumentPatch({
    this.body,
    this.file,
    this.permission,
    this.text,
  });

  factory DocumentPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentPatch(
      body: List<Map<String, dynamic>>.from(json['body']),
      file: DocumentPatchFile.fromJson(json['file']),
      permission: DocumentPatchPermission.fromJson(json['permission']),
      text: json['text'],
    );
  }

  List<Map<String, dynamic>> body;

  DocumentPatchFile file;

  DocumentPatchPermission permission;

  String text;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatch &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(body, other.body) &&
        file == other.file &&
        permission == other.permission &&
        text == other.text;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (body is List && body.isNotEmpty) {
      hashCode ^= body
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= file?.hashCode ?? 0;
    hashCode ^= permission?.hashCode ?? 0;
    hashCode ^= text?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentPatch.fromJson(value))
            ?.toList() ??
        <DocumentPatch>[];
  }

  static Map<String, DocumentPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentPatch>((String key, dynamic value) {
          return MapEntry(key, DocumentPatch.fromJson(value));
        }) ??
        <String, DocumentPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (body != null) 'body': body,
      if (file != null) 'file': file.toJson(),
      if (permission != null) 'permission': permission.toJson(),
      if (text != null) 'text': text,
    };
  }

  @override
  String toString() {
    return 'DocumentPatch[body=$body, file=$file, permission=$permission, text=$text, ]';
  }
}
