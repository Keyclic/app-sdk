//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleLinksSectionIriTemplateMapping {
  /// Returns a new [ArticleLinksSectionIriTemplateMapping] instance.
  ArticleLinksSectionIriTemplateMapping({
    this.section,
  });

  /// Returns a new [ArticleLinksSectionIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleLinksSectionIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSectionIriTemplateMapping(
      section: json[r'section'],
    );
  }

  String? section;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSectionIriTemplateMapping &&
        other.section == section;
  }

  @override
  int get hashCode => (section == null ? 0 : section.hashCode);

  static List<ArticleLinksSectionIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ArticleLinksSectionIriTemplateMapping>[];
    }

    return json.fold(<ArticleLinksSectionIriTemplateMapping>[],
        (List<ArticleLinksSectionIriTemplateMapping> previousValue, element) {
      final ArticleLinksSectionIriTemplateMapping? object =
          ArticleLinksSectionIriTemplateMapping.fromJson(element);
      if (object is ArticleLinksSectionIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticleLinksSectionIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinksSectionIriTemplateMapping>{};
    }

    return json.entries.fold(<String, ArticleLinksSectionIriTemplateMapping>{},
        (Map<String, ArticleLinksSectionIriTemplateMapping> previousValue,
            element) {
      final ArticleLinksSectionIriTemplateMapping? object =
          ArticleLinksSectionIriTemplateMapping.fromJson(element.value);
      if (object is ArticleLinksSectionIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticleLinksSectionIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ArticleLinksSectionIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticleLinksSectionIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticleLinksSectionIriTemplateMapping>>(
          key, ArticleLinksSectionIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ArticleLinksSectionIriTemplateMapping[section=$section]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (section != null) r'section': section,
    };
  }
}
