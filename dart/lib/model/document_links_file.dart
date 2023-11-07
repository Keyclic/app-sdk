//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksFile {
  /// Returns a new [DocumentLinksFile] instance.
  DocumentLinksFile({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [DocumentLinksFile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksFile(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : DocumentLinksFileIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the file associated to the given document.
  String? href;

  DocumentLinksFileIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksFile &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<DocumentLinksFile> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksFile>[];
    }

    return json.fold(<DocumentLinksFile>[],
        (List<DocumentLinksFile> previousValue, element) {
      final DocumentLinksFile? object = DocumentLinksFile.fromJson(element);
      if (object is DocumentLinksFile) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinksFile> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksFile>{};
    }

    return json.entries.fold(<String, DocumentLinksFile>{},
        (Map<String, DocumentLinksFile> previousValue, element) {
      final DocumentLinksFile? object =
          DocumentLinksFile.fromJson(element.value);
      if (object is DocumentLinksFile) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinksFile-objects as value to a dart map
  static Map<String, List<DocumentLinksFile>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinksFile>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinksFile>>(
          key, DocumentLinksFile.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentLinksFile[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
