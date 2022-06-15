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
      iriTemplate: DocumentLinksFileIriTemplate.fromJson(json[r'iriTemplate']),
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
    return json
        .map((value) {
          return DocumentLinksFile.fromJson(value);
        })
        .whereType<DocumentLinksFile>()
        .toList();
  }

  static Map<String, DocumentLinksFile> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksFile>{};
    }

    final map = json.map((key, value) => MapEntry<String, DocumentLinksFile?>(
        key, DocumentLinksFile.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentLinksFile>;
  }

  // maps a json object with a list of DocumentLinksFile-objects as value to a dart map
  static Map<String, List<DocumentLinksFile>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentLinksFile>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentLinksFile.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentLinksFile[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
