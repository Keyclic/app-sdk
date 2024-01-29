//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleLinksSelf {
  /// Returns a new [ArticleLinksSelf] instance.
  ArticleLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ArticleLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSelf(
      href: json[r'href'],
      iriTemplate: ArticleLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given article.
  String? href;

  ArticleLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ArticleLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ArticleLinksSelf>[];
    }

    return json.fold(<ArticleLinksSelf>[],
        (List<ArticleLinksSelf> previousValue, element) {
      final ArticleLinksSelf? object = ArticleLinksSelf.fromJson(element);
      if (object is ArticleLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticleLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinksSelf>{};
    }

    return json.entries.fold(<String, ArticleLinksSelf>{},
        (Map<String, ArticleLinksSelf> previousValue, element) {
      final ArticleLinksSelf? object = ArticleLinksSelf.fromJson(element.value);
      if (object is ArticleLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticleLinksSelf-objects as value to a dart map
  static Map<String, List<ArticleLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticleLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticleLinksSelf>>(
          key, ArticleLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ArticleLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
