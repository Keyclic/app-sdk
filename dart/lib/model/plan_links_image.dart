//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanLinksImage {
  /// Returns a new [PlanLinksImage] instance.
  PlanLinksImage({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlanLinksImage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanLinksImage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanLinksImage(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : PlanLinksImageIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the image associated to the given plan.
  String? href;

  PlanLinksImageIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksImage &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlanLinksImage> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PlanLinksImage>[];
    }

    return json.fold(<PlanLinksImage>[],
        (List<PlanLinksImage> previousValue, element) {
      final PlanLinksImage? object = PlanLinksImage.fromJson(element);
      if (object is PlanLinksImage) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanLinksImage> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinksImage>{};
    }

    return json.entries.fold(<String, PlanLinksImage>{},
        (Map<String, PlanLinksImage> previousValue, element) {
      final PlanLinksImage? object = PlanLinksImage.fromJson(element.value);
      if (object is PlanLinksImage) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanLinksImage-objects as value to a dart map
  static Map<String, List<PlanLinksImage>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanLinksImage>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanLinksImage>>(
          key, PlanLinksImage.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanLinksImage[href=$href, iriTemplate=$iriTemplate]';

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
