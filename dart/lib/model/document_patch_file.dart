//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentPatchFile {
  /// Returns a new [DocumentPatchFile] instance.
  DocumentPatchFile({
    this.name,
  });

  /// Returns a new [DocumentPatchFile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentPatchFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentPatchFile(
      name: json[r'name'],
    );
  }

  String name;

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

  static List<DocumentPatchFile> listFromJson(List<dynamic> json) {
    return <DocumentPatchFile>[
      if (json is List)
        for (dynamic value in json) DocumentPatchFile.fromJson(value),
    ];
  }

  static Map<String, DocumentPatchFile> mapFromJson(Map<String, dynamic> json) {
    return <String, DocumentPatchFile>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentPatchFile.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentPatchFile-objects as value to a dart map
  static Map<String, List<DocumentPatchFile>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentPatchFile>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentPatchFile.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentPatchFile[name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (name != null) r'name': name,
    };
  }
}
