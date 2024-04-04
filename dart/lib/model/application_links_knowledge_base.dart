//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationLinksKnowledgeBase {
  /// Returns a new [ApplicationLinksKnowledgeBase] instance.
  ApplicationLinksKnowledgeBase({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ApplicationLinksKnowledgeBase] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationLinksKnowledgeBase? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ApplicationLinksKnowledgeBase(
      href: json[r'href'],
      iriTemplate: ApplicationLinksKnowledgeBaseIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the knowledgeBase associated to the given application.
  String? href;

  ApplicationLinksKnowledgeBaseIriTemplate? iriTemplate;

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

  static List<ApplicationLinksKnowledgeBase> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ApplicationLinksKnowledgeBase>[];
    }

    return json.fold(<ApplicationLinksKnowledgeBase>[],
        (List<ApplicationLinksKnowledgeBase> previousValue, element) {
      final ApplicationLinksKnowledgeBase? object =
          ApplicationLinksKnowledgeBase.fromJson(element);
      if (object is ApplicationLinksKnowledgeBase) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationLinksKnowledgeBase> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationLinksKnowledgeBase>{};
    }

    return json.entries.fold(<String, ApplicationLinksKnowledgeBase>{},
        (Map<String, ApplicationLinksKnowledgeBase> previousValue, element) {
      final ApplicationLinksKnowledgeBase? object =
          ApplicationLinksKnowledgeBase.fromJson(element.value);
      if (object is ApplicationLinksKnowledgeBase) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationLinksKnowledgeBase-objects as value to a dart map
  static Map<String, List<ApplicationLinksKnowledgeBase>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationLinksKnowledgeBase>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationLinksKnowledgeBase>>(
          key, ApplicationLinksKnowledgeBase.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ApplicationLinksKnowledgeBase[href=$href, iriTemplate=$iriTemplate]';

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
