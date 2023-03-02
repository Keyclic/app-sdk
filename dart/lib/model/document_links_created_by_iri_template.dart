//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentLinksCreatedByIriTemplate {
  /// Returns a new [DocumentLinksCreatedByIriTemplate] instance.
  DocumentLinksCreatedByIriTemplate({
    this.mapping,
  });

  /// Returns a new [DocumentLinksCreatedByIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentLinksCreatedByIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksCreatedByIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

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
      List<dynamic> json) {
    return <DocumentLinksCreatedByIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          DocumentLinksCreatedByIriTemplate.fromJson(value),
    ];
  }

  static Map<String, DocumentLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DocumentLinksCreatedByIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentLinksCreatedByIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentLinksCreatedByIriTemplate-objects as value to a dart map
  static Map<String, List<DocumentLinksCreatedByIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentLinksCreatedByIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
