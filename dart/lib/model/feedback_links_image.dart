//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksImage {
  /// Returns a new [FeedbackLinksImage] instance.
  FeedbackLinksImage({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksImage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImage(
      href: json[r'href'],
      iriTemplate: FeedbackLinksImageIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the image associated to the given feedback.
  String href;

  FeedbackLinksImageIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImage &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksImage> listFromJson(List<dynamic> json) {
    return <FeedbackLinksImage>[
      if (json is List)
        for (dynamic value in json) FeedbackLinksImage.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksImage> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackLinksImage>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksImage.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksImage-objects as value to a dart map
  static Map<String, List<FeedbackLinksImage>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksImage>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksImage.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksImage[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
