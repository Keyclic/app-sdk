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

    return json.fold(<PublicationLinksAuthorIriTemplate>[],
        (List<PublicationLinksAuthorIriTemplate> previousValue, element) {
      final PublicationLinksAuthorIriTemplate? object =
          PublicationLinksAuthorIriTemplate.fromJson(element);
      if (object is PublicationLinksAuthorIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksAuthorIriTemplate>{};
    }

    return json.entries.fold(<String, PublicationLinksAuthorIriTemplate>{},
        (Map<String, PublicationLinksAuthorIriTemplate> previousValue,
            element) {
      final PublicationLinksAuthorIriTemplate? object =
          PublicationLinksAuthorIriTemplate.fromJson(element.value);
      if (object is PublicationLinksAuthorIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationLinksAuthorIriTemplate-objects as value to a dart map
  static Map<String, List<PublicationLinksAuthorIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationLinksAuthorIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationLinksAuthorIriTemplate>>(
          key, PublicationLinksAuthorIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PublicationLinksAuthorIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
