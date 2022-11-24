//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApplicationLinksKnowledgeBase {
  /// Returns a new [ApplicationLinksKnowledgeBase] instance.
  ApplicationLinksKnowledgeBase({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ApplicationLinksKnowledgeBase] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ApplicationLinksKnowledgeBase.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksKnowledgeBase(
      href: json[r'href'],
      iriTemplate: ApplicationLinksKnowledgeBaseIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the knowledgeBase associated to the given application.
  String href;

  ApplicationLinksKnowledgeBaseIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksKnowledgeBase &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ApplicationLinksKnowledgeBase> listFromJson(List<dynamic> json) {
    return <ApplicationLinksKnowledgeBase>[
      if (json is List)
        for (dynamic value in json)
          ApplicationLinksKnowledgeBase.fromJson(value),
    ];
  }

  static Map<String, ApplicationLinksKnowledgeBase> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ApplicationLinksKnowledgeBase>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationLinksKnowledgeBase.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ApplicationLinksKnowledgeBase-objects as value to a dart map
  static Map<String, List<ApplicationLinksKnowledgeBase>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ApplicationLinksKnowledgeBase>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationLinksKnowledgeBase.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ApplicationLinksKnowledgeBase[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
