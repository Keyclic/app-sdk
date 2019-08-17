part of keyclic_sdk_api.api;

class DocumentPatchFile {
  DocumentPatchFile({
    this.name,
  });

  DocumentPatchFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
  }

  String name;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatchFile && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DocumentPatchFile> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentPatchFile>()
        : json.map((value) => DocumentPatchFile.fromJson(value)).toList();
  }

  static Map<String, DocumentPatchFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentPatchFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentPatchFile.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }

  @override
  String toString() {
    return 'DocumentPatchFile[name=$name, ]';
  }
}