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
  static DocumentLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DocumentLinks(
      createdBy: DocumentLinksCreatedBy.fromJson(json[r'createdBy']),
      file: DocumentLinksFile.fromJson(json[r'file']),
      procedure: DocumentLinksProcedure.fromJson(json[r'procedure']),
      self: DocumentLinksSelf.fromJson(json[r'self']),
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

  static List<DocumentLinks> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^createdBy\.').hasMatch(key)))
        r'createdBy': createdBy?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^createdBy\.'))) {
            previousValue.add(element.split(RegExp(r'^createdBy\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^file\.').hasMatch(key)))
        r'file': file?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^file\.'))) {
            previousValue.add(element.split(RegExp(r'^file\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^procedure\.').hasMatch(key)))
        r'procedure': procedure?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^procedure\.'))) {
            previousValue.add(element.split(RegExp(r'^procedure\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
