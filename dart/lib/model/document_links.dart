//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentLinks {
  /// Returns a new [DocumentLinks] instance.
  DocumentLinks({
    this.createdBy,
    this.file,
    this.self,
  });

  /// Returns a new [DocumentLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinks(
      createdBy: DocumentLinksCreatedBy.fromJson(json[r'createdBy']),
      file: DocumentLinksFile.fromJson(json[r'file']),
      self: DocumentLinksSelf.fromJson(json[r'self']),
    );
  }

  DocumentLinksCreatedBy createdBy;

  DocumentLinksFile file;

  DocumentLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinks &&
        other.createdBy == createdBy &&
        other.file == file &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (createdBy == null ? 0 : createdBy.hashCode) +
      (file == null ? 0 : file.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<DocumentLinks> listFromJson(List<dynamic> json) {
    return <DocumentLinks>[
      if (json is List)
        for (dynamic value in json) DocumentLinks.fromJson(value),
    ];
  }

  static Map<String, DocumentLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, DocumentLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentLinks-objects as value to a dart map
  static Map<String, List<DocumentLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentLinks[createdBy=$createdBy, file=$file, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (createdBy != null) r'createdBy': createdBy,
      if (file != null) r'file': file,
      if (self != null) r'self': self,
    };
  }
}
