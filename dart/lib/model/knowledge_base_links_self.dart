//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class KnowledgeBaseLinksSelf {
  /// Returns a new [KnowledgeBaseLinksSelf] instance.
  KnowledgeBaseLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [KnowledgeBaseLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static KnowledgeBaseLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return KnowledgeBaseLinksSelf(
      href: json[r'href'],
      iriTemplate:
          KnowledgeBaseLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given knowledgebase.
  String? href;

  KnowledgeBaseLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is KnowledgeBaseLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<KnowledgeBaseLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <KnowledgeBaseLinksSelf>[];
    }

    return json.fold(<KnowledgeBaseLinksSelf>[],
        (List<KnowledgeBaseLinksSelf> previousValue, element) {
      final KnowledgeBaseLinksSelf? object =
          KnowledgeBaseLinksSelf.fromJson(element);
      if (object is KnowledgeBaseLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, KnowledgeBaseLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, KnowledgeBaseLinksSelf>{};
    }

    return json.entries.fold(<String, KnowledgeBaseLinksSelf>{},
        (Map<String, KnowledgeBaseLinksSelf> previousValue, element) {
      final KnowledgeBaseLinksSelf? object =
          KnowledgeBaseLinksSelf.fromJson(element.value);
      if (object is KnowledgeBaseLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of KnowledgeBaseLinksSelf-objects as value to a dart map
  static Map<String, List<KnowledgeBaseLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<KnowledgeBaseLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<KnowledgeBaseLinksSelf>>(
          key, KnowledgeBaseLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'KnowledgeBaseLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
