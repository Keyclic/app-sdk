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
  static KnowledgeBaseLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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
    return json
        .map((value) {
          return KnowledgeBaseLinksSelf.fromJson(value);
        })
        .whereType<KnowledgeBaseLinksSelf>()
        .toList();
  }

  static Map<String, KnowledgeBaseLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, KnowledgeBaseLinksSelf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, KnowledgeBaseLinksSelf?>(
            key, KnowledgeBaseLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, KnowledgeBaseLinksSelf>;
  }

  // maps a json object with a list of KnowledgeBaseLinksSelf-objects as value to a dart map
  static Map<String, List<KnowledgeBaseLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<KnowledgeBaseLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: KnowledgeBaseLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'KnowledgeBaseLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
