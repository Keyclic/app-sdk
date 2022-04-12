//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksImages {
  /// Returns a new [FeedbackLinksImages] instance.
  FeedbackLinksImages({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksImages] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksImages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImages(
      href: json[r'href'],
      iriTemplate:
          FeedbackLinksImagesIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the images associated to the given feedback.
  String? href;

  FeedbackLinksImagesIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImages &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksImages> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksImages>[];
    }
    return json
        .map((value) {
          return FeedbackLinksImages.fromJson(value);
        })
        .whereType<FeedbackLinksImages>()
        .toList();
  }

  static Map<String, FeedbackLinksImages> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksImages>{};
    }

    final map = json.map((key, value) => MapEntry<String, FeedbackLinksImages?>(
        key, FeedbackLinksImages.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackLinksImages>;
  }

  // maps a json object with a list of FeedbackLinksImages-objects as value to a dart map
  static Map<String, List<FeedbackLinksImages>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackLinksImages>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: FeedbackLinksImages.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksImages[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
