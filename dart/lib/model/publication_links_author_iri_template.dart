//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksAuthorIriTemplate {
  /// Returns a new [PublicationLinksAuthorIriTemplate] instance.
  PublicationLinksAuthorIriTemplate({
    this.mapping,
  });

  /// Returns a new [PublicationLinksAuthorIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksAuthorIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksAuthorIriTemplate(
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

    return other is PublicationLinksAuthorIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PublicationLinksAuthorIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksAuthorIriTemplate>[];
    }
    return json
        .map((value) {
          return PublicationLinksAuthorIriTemplate.fromJson(value);
        })
        .whereType<PublicationLinksAuthorIriTemplate>()
        .toList();
  }

  static Map<String, PublicationLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksAuthorIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PublicationLinksAuthorIriTemplate?>(
            key, PublicationLinksAuthorIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationLinksAuthorIriTemplate>;
  }

  // maps a json object with a list of PublicationLinksAuthorIriTemplate-objects as value to a dart map
  static Map<String, List<PublicationLinksAuthorIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PublicationLinksAuthorIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              PublicationLinksAuthorIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PublicationLinksAuthorIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
