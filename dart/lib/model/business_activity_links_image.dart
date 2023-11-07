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
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : BusinessActivityLinksImageIriTemplate.fromJson(
              json[r'iriTemplate']),
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

    return json.fold(<BusinessActivityLinksImage>[],
        (List<BusinessActivityLinksImage> previousValue, element) {
      final BusinessActivityLinksImage? object =
          BusinessActivityLinksImage.fromJson(element);
      if (object is BusinessActivityLinksImage) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinksImage> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksImage>{};
    }

    return json.entries.fold(<String, BusinessActivityLinksImage>{},
        (Map<String, BusinessActivityLinksImage> previousValue, element) {
      final BusinessActivityLinksImage? object =
          BusinessActivityLinksImage.fromJson(element.value);
      if (object is BusinessActivityLinksImage) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinksImage-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksImage>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinksImage>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityLinksImage>>(
          key, BusinessActivityLinksImage.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivityLinksImage[href=$href, iriTemplate=$iriTemplate]';

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
