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
  static DocumentLinksCreatedBy? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<DocumentLinksCreatedBy>[],
        (List<DocumentLinksCreatedBy> previousValue, element) {
      final DocumentLinksCreatedBy? object =
          DocumentLinksCreatedBy.fromJson(element);
      if (object is DocumentLinksCreatedBy) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinksCreatedBy> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksCreatedBy>{};
    }

    return json.entries.fold(<String, DocumentLinksCreatedBy>{},
        (Map<String, DocumentLinksCreatedBy> previousValue, element) {
      final DocumentLinksCreatedBy? object =
          DocumentLinksCreatedBy.fromJson(element.value);
      if (object is DocumentLinksCreatedBy) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinksCreatedBy-objects as value to a dart map
  static Map<String, List<DocumentLinksCreatedBy>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinksCreatedBy>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinksCreatedBy>>(
          key, DocumentLinksCreatedBy.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentLinksCreatedBy[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
