//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinks {
  /// Returns a new [DocumentLinks] instance.
  DocumentLinks({
    this.createdBy,
    this.file,
    this.procedure,
    this.self,
  });

  /// Returns a new [DocumentLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinks(
      createdBy: json[r'createdBy'] is! Map
          ? null
          : DocumentLinksCreatedBy.fromJson(json[r'createdBy']),
      file: json[r'file'] is! Map
          ? null
          : DocumentLinksFile.fromJson(json[r'file']),
      procedure: json[r'procedure'] is! Map
          ? null
          : DocumentLinksProcedure.fromJson(json[r'procedure']),
      self: json[r'self'] is! Map
          ? null
          : DocumentLinksSelf.fromJson(json[r'self']),
    );
  }

  DocumentLinksCreatedBy? createdBy;

  DocumentLinksFile? file;

  DocumentLinksProcedure? procedure;

  DocumentLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinks &&
        other.createdBy == createdBy &&
        other.file == file &&
        other.procedure == procedure &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (createdBy == null ? 0 : createdBy.hashCode) +
      (file == null ? 0 : file.hashCode) +
      (procedure == null ? 0 : procedure.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<DocumentLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinks>[];
    }

    return json.fold(<DocumentLinks>[],
        (List<DocumentLinks> previousValue, element) {
      final DocumentLinks? object = DocumentLinks.fromJson(element);
      if (object is DocumentLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinks>{};
    }

    return json.entries.fold(<String, DocumentLinks>{},
        (Map<String, DocumentLinks> previousValue, element) {
      final DocumentLinks? object = DocumentLinks.fromJson(element.value);
      if (object is DocumentLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinks-objects as value to a dart map
  static Map<String, List<DocumentLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinks>>(
          key, DocumentLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentLinks[createdBy=$createdBy, file=$file, procedure=$procedure, self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && createdBy != null) ||
          (keys?.contains(r'createdBy') ?? false))
        r'createdBy': createdBy?.toJson(),
      if ((keys == null && file != null) || (keys?.contains(r'file') ?? false))
        r'file': file?.toJson(),
      if ((keys == null && procedure != null) ||
          (keys?.contains(r'procedure') ?? false))
        r'procedure': procedure?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
