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
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
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
    return json
        .map((value) {
          return DocumentLinksCreatedByIriTemplate.fromJson(value);
        })
        .whereType<DocumentLinksCreatedByIriTemplate>()
        .toList();
  }

  static Map<String, DocumentLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentLinksCreatedByIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentLinksCreatedByIriTemplate?>(
            key, DocumentLinksCreatedByIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentLinksCreatedByIriTemplate>;
  }

  // maps a json object with a list of DocumentLinksCreatedByIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksCreatedByIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentLinksCreatedByIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              DocumentLinksCreatedByIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentLinksCreatedByIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
