//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksImage {
  /// Returns a new [BusinessActivityLinksImage] instance.
  BusinessActivityLinksImage({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BusinessActivityLinksImage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksImage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksImage(
      href: json[r'href'],
      iriTemplate:
          BusinessActivityLinksImageIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the image associated to the given businessactivity.
  String? href;

  BusinessActivityLinksImageIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksImage &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BusinessActivityLinksImage> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksImage>[];
    }
    return json
        .map((value) {
          return BusinessActivityLinksImage.fromJson(value);
        })
        .whereType<BusinessActivityLinksImage>()
        .toList();
  }

  static Map<String, BusinessActivityLinksImage> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksImage>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityLinksImage?>(
            key, BusinessActivityLinksImage.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityLinksImage>;
  }

  // maps a json object with a list of BusinessActivityLinksImage-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksImage>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BusinessActivityLinksImage>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BusinessActivityLinksImage.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityLinksImage[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
