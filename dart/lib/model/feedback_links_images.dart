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

    return json.fold(<FeedbackLinksImages>[],
        (List<FeedbackLinksImages> previousValue, element) {
      final FeedbackLinksImages? object = FeedbackLinksImages.fromJson(element);
      if (object is FeedbackLinksImages) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksImages> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksImages>{};
    }

    return json.entries.fold(<String, FeedbackLinksImages>{},
        (Map<String, FeedbackLinksImages> previousValue, element) {
      final FeedbackLinksImages? object =
          FeedbackLinksImages.fromJson(element.value);
      if (object is FeedbackLinksImages) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksImages-objects as value to a dart map
  static Map<String, List<FeedbackLinksImages>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksImages>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksImages>>(
          key, FeedbackLinksImages.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksImages[href=$href, iriTemplate=$iriTemplate]';

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
