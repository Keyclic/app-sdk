//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksSelf {
  /// Returns a new [FeedbackLinksSelf] instance.
  FeedbackLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksSelf(
      href: json[r'href'],
      iriTemplate: FeedbackLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given feedback.
  String? href;

  FeedbackLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksSelf>[];
    }

    return json.fold(<FeedbackLinksSelf>[],
        (List<FeedbackLinksSelf> previousValue, element) {
      final FeedbackLinksSelf? object = FeedbackLinksSelf.fromJson(element);
      if (object is FeedbackLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksSelf>{};
    }

    return json.entries.fold(<String, FeedbackLinksSelf>{},
        (Map<String, FeedbackLinksSelf> previousValue, element) {
      final FeedbackLinksSelf? object =
          FeedbackLinksSelf.fromJson(element.value);
      if (object is FeedbackLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksSelf-objects as value to a dart map
  static Map<String, List<FeedbackLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksSelf>>(
          key, FeedbackLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
