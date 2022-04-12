//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksCreatedBy {
  /// Returns a new [DocumentLinksCreatedBy] instance.
  DocumentLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [DocumentLinksCreatedBy] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksCreatedBy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksCreatedBy(
      href: json[r'href'],
      iriTemplate:
          DocumentLinksCreatedByIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the createdBy associated to the given document.
  String? href;

  DocumentLinksCreatedByIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksCreatedBy &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<DocumentLinksCreatedBy> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksCreatedBy>[];
    }
    return json
        .map((value) {
          return DocumentLinksCreatedBy.fromJson(value);
        })
        .whereType<DocumentLinksCreatedBy>()
        .toList();
  }

  static Map<String, DocumentLinksCreatedBy> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksCreatedBy>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentLinksCreatedBy?>(
            key, DocumentLinksCreatedBy.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentLinksCreatedBy>;
  }

  // maps a json object with a list of DocumentLinksCreatedBy-objects as value to a dart map
  static Map<String, List<DocumentLinksCreatedBy>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentLinksCreatedBy>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentLinksCreatedBy.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentLinksCreatedBy[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
