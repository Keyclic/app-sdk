//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksFileIriTemplateMapping {
  /// Returns a new [DocumentLinksFileIriTemplateMapping] instance.
  DocumentLinksFileIriTemplateMapping({
    this.document,
  });

  /// Returns a new [DocumentLinksFileIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksFileIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksFileIriTemplateMapping(
      document: json[r'document'],
    );
  }

  String? document;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksFileIriTemplateMapping &&
        other.document == document;
  }

  @override
  int get hashCode => (document == null ? 0 : document.hashCode);

  static List<DocumentLinksFileIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksFileIriTemplateMapping>[];
    }

    return json.fold(<DocumentLinksFileIriTemplateMapping>[],
        (List<DocumentLinksFileIriTemplateMapping> previousValue, element) {
      final DocumentLinksFileIriTemplateMapping? object =
          DocumentLinksFileIriTemplateMapping.fromJson(element);
      if (object is DocumentLinksFileIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinksFileIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksFileIriTemplateMapping>{};
    }

    return json.entries.fold(<String, DocumentLinksFileIriTemplateMapping>{},
        (Map<String, DocumentLinksFileIriTemplateMapping> previousValue,
            element) {
      final DocumentLinksFileIriTemplateMapping? object =
          DocumentLinksFileIriTemplateMapping.fromJson(element.value);
      if (object is DocumentLinksFileIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinksFileIriTemplateMapping-objects as value to a dart map
  static Map<String, List<DocumentLinksFileIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinksFileIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinksFileIriTemplateMapping>>(
          key, DocumentLinksFileIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentLinksFileIriTemplateMapping[document=$document]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && document != null) ||
          (keys?.contains(r'document') ?? false))
        r'document': document,
    };
  }
}
