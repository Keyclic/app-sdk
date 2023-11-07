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
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : FeedbackLinksCategoryIriTemplate.fromJson(json[r'iriTemplate']),
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

    return json.fold(<FeedbackLinksCategory>[],
        (List<FeedbackLinksCategory> previousValue, element) {
      final FeedbackLinksCategory? object =
          FeedbackLinksCategory.fromJson(element);
      if (object is FeedbackLinksCategory) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksCategory> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksCategory>{};
    }

    return json.entries.fold(<String, FeedbackLinksCategory>{},
        (Map<String, FeedbackLinksCategory> previousValue, element) {
      final FeedbackLinksCategory? object =
          FeedbackLinksCategory.fromJson(element.value);
      if (object is FeedbackLinksCategory) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksCategory-objects as value to a dart map
  static Map<String, List<FeedbackLinksCategory>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksCategory>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksCategory>>(
          key, FeedbackLinksCategory.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksCategory[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
