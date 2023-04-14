//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentPatchFile {
  /// Returns a new [DocumentPatchFile] instance.
  DocumentPatchFile({
    this.name,
  });

  /// Returns a new [DocumentPatchFile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentPatchFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentPatchFile(
      name: json[r'name'],
    );
  }

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatchFile && other.name == name;
  }

  @override
  int get hashCode => (name == null ? 0 : name.hashCode);

  static List<DocumentPatchFile> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentPatchFile>[];
    }

    return json.fold(<DocumentPatchFile>[],
        (List<DocumentPatchFile> previousValue, element) {
      final DocumentPatchFile? object = DocumentPatchFile.fromJson(element);
      if (object is DocumentPatchFile) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentPatchFile> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentPatchFile>{};
    }

    return json.entries.fold(<String, DocumentPatchFile>{},
        (Map<String, DocumentPatchFile> previousValue, element) {
      final DocumentPatchFile? object =
          DocumentPatchFile.fromJson(element.value);
      if (object is DocumentPatchFile) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentPatchFile-objects as value to a dart map
  static Map<String, List<DocumentPatchFile>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentPatchFile>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentPatchFile>>(
          key, DocumentPatchFile.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentPatchFile[name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (name != null) r'name': name,
    };
  }
}
