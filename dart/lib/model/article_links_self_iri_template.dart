//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleLinksSelfIriTemplate {
  /// Returns a new [ArticleLinksSelfIriTemplate] instance.
  ArticleLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ArticleLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSelfIriTemplate(
      mapping: ArticleLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ArticleLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ArticleLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ArticleLinksSelfIriTemplate>[];
    }

    return json.fold(<ArticleLinksSelfIriTemplate>[],
        (List<ArticleLinksSelfIriTemplate> previousValue, element) {
      final ArticleLinksSelfIriTemplate? object =
          ArticleLinksSelfIriTemplate.fromJson(element);
      if (object is ArticleLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticleLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, ArticleLinksSelfIriTemplate>{},
        (Map<String, ArticleLinksSelfIriTemplate> previousValue, element) {
      final ArticleLinksSelfIriTemplate? object =
          ArticleLinksSelfIriTemplate.fromJson(element.value);
      if (object is ArticleLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticleLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ArticleLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticleLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticleLinksSelfIriTemplate>>(
          key, ArticleLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ArticleLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
