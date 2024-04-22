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
  static BusinessActivityLinksImage? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<BusinessActivityLinksImage> listFromJson(Iterable? json) {
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
