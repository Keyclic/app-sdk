//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentLinksCreatedByIriTemplate {
  /// Returns a new [DocumentLinksCreatedByIriTemplate] instance.
  DocumentLinksCreatedByIriTemplate({
    this.mapping,
  });

  /// Returns a new [DocumentLinksCreatedByIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentLinksCreatedByIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksCreatedByIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : ContributionLinksContributorIriTemplateMapping.fromJson(
              json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksCreatedByIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DocumentLinksCreatedByIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <DocumentLinksCreatedByIriTemplate>[];
    }

    return json.fold(<DocumentLinksCreatedByIriTemplate>[],
        (List<DocumentLinksCreatedByIriTemplate> previousValue, element) {
      final DocumentLinksCreatedByIriTemplate? object =
          DocumentLinksCreatedByIriTemplate.fromJson(element);
      if (object is DocumentLinksCreatedByIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksCreatedByIriTemplate>{};
    }

    return json.entries.fold(<String, DocumentLinksCreatedByIriTemplate>{},
        (Map<String, DocumentLinksCreatedByIriTemplate> previousValue,
            element) {
      final DocumentLinksCreatedByIriTemplate? object =
          DocumentLinksCreatedByIriTemplate.fromJson(element.value);
      if (object is DocumentLinksCreatedByIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentLinksCreatedByIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksCreatedByIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentLinksCreatedByIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentLinksCreatedByIriTemplate>>(
          key, DocumentLinksCreatedByIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentLinksCreatedByIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
