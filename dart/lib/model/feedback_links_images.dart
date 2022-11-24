//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksImages {
  /// Returns a new [FeedbackLinksImages] instance.
  FeedbackLinksImages({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksImages] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksImages.fromJson(Map<String, dynamic> json) {
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
  String href;

  FeedbackLinksImagesIriTemplate iriTemplate;

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

  static List<FeedbackLinksImages> listFromJson(List<dynamic> json) {
    return <FeedbackLinksImages>[
      if (json is List)
        for (dynamic value in json) FeedbackLinksImages.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksImages> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksImages>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksImages.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksImages-objects as value to a dart map
  static Map<String, List<FeedbackLinksImages>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksImages>>{
      if (json is Map)
        for (final entry in json.entries)
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
