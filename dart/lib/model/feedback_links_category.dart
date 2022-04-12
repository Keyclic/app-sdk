//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksCategory {
  /// Returns a new [FeedbackLinksCategory] instance.
  FeedbackLinksCategory({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksCategory] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksCategory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksCategory(
      href: json[r'href'],
      iriTemplate:
          FeedbackLinksCategoryIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the category associated to the given feedback.
  String? href;

  FeedbackLinksCategoryIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksCategory &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksCategory> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksCategory>[];
    }
    return json
        .map((value) {
          return FeedbackLinksCategory.fromJson(value);
        })
        .whereType<FeedbackLinksCategory>()
        .toList();
  }

  static Map<String, FeedbackLinksCategory> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksCategory>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, FeedbackLinksCategory?>(
            key, FeedbackLinksCategory.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackLinksCategory>;
  }

  // maps a json object with a list of FeedbackLinksCategory-objects as value to a dart map
  static Map<String, List<FeedbackLinksCategory>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackLinksCategory>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: FeedbackLinksCategory.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksCategory[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
