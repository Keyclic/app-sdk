//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleLinksSectionIriTemplate {
  /// Returns a new [ArticleLinksSectionIriTemplate] instance.
  ArticleLinksSectionIriTemplate({
    this.mapping,
  });

  /// Returns a new [ArticleLinksSectionIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleLinksSectionIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSectionIriTemplate(
      mapping: ArticleLinksSectionIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ArticleLinksSectionIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSectionIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ArticleLinksSectionIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ArticleLinksSectionIriTemplate>[];
    }

    return json.fold(<ArticleLinksSectionIriTemplate>[],
        (List<ArticleLinksSectionIriTemplate> previousValue, element) {
      final ArticleLinksSectionIriTemplate? object =
          ArticleLinksSectionIriTemplate.fromJson(element);
      if (object is ArticleLinksSectionIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticleLinksSectionIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinksSectionIriTemplate>{};
    }

    return json.entries.fold(<String, ArticleLinksSectionIriTemplate>{},
        (Map<String, ArticleLinksSectionIriTemplate> previousValue, element) {
      final ArticleLinksSectionIriTemplate? object =
          ArticleLinksSectionIriTemplate.fromJson(element.value);
      if (object is ArticleLinksSectionIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticleLinksSectionIriTemplate-objects as value to a dart map
  static Map<String, List<ArticleLinksSectionIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticleLinksSectionIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticleLinksSectionIriTemplate>>(
          key, ArticleLinksSectionIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ArticleLinksSectionIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
