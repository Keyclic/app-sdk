//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentLinksProcedure {
  /// Returns a new [DocumentLinksProcedure] instance.
  DocumentLinksProcedure({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [DocumentLinksProcedure] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentLinksProcedure.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksProcedure(
      href: json[r'href'],
      iriTemplate:
          DocumentLinksProcedureIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the procedure associated to the given document.
  String href;

  DocumentLinksProcedureIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksProcedure &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<DocumentLinksProcedure> listFromJson(List<dynamic> json) {
    return <DocumentLinksProcedure>[
      if (json is List)
        for (dynamic value in json) DocumentLinksProcedure.fromJson(value),
    ];
  }

  static Map<String, DocumentLinksProcedure> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DocumentLinksProcedure>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentLinksProcedure.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentLinksProcedure-objects as value to a dart map
  static Map<String, List<DocumentLinksProcedure>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentLinksProcedure>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentLinksProcedure.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentLinksProcedure[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
