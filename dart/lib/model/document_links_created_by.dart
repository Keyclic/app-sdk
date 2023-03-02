//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentLinksCreatedBy {
  /// Returns a new [DocumentLinksCreatedBy] instance.
  DocumentLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [DocumentLinksCreatedBy] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentLinksCreatedBy.fromJson(Map<String, dynamic> json) {
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
  String href;

  DocumentLinksCreatedByIriTemplate iriTemplate;

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

  static List<DocumentLinksCreatedBy> listFromJson(List<dynamic> json) {
    return <DocumentLinksCreatedBy>[
      if (json is List)
        for (dynamic value in json) DocumentLinksCreatedBy.fromJson(value),
    ];
  }

  static Map<String, DocumentLinksCreatedBy> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DocumentLinksCreatedBy>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentLinksCreatedBy.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentLinksCreatedBy-objects as value to a dart map
  static Map<String, List<DocumentLinksCreatedBy>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentLinksCreatedBy>>{
      if (json is Map)
        for (final entry in json.entries)
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
