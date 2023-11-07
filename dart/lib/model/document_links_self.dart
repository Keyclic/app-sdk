//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksSelf {
  /// Returns a new [DocumentLinksSelf] instance.
  DocumentLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [DocumentLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksSelf(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : DocumentLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given document.
  String? href;

  DocumentLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<DocumentLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksSelf>[];
    }

    return json.fold(<DocumentLinksSelf>[],
        (List<DocumentLinksSelf> previousValue, element) {
      final DocumentLinksSelf? object = DocumentLinksSelf.fromJson(element);
      if (object is DocumentLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksSelf>{};
    }

    return json.entries.fold(<String, DocumentLinksSelf>{},
        (Map<String, DocumentLinksSelf> previousValue, element) {
      final DocumentLinksSelf? object =
          DocumentLinksSelf.fromJson(element.value);
      if (object is DocumentLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinksSelf-objects as value to a dart map
  static Map<String, List<DocumentLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinksSelf>>(
          key, DocumentLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
