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
  static PlanLinksImage? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlanLinksImage(
      href: json[r'href'],
      iriTemplate: PlanLinksImageIriTemplate.fromJson(json[r'iriTemplate']),
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

  static List<PlanLinksImage> listFromJson(List<dynamic>? json) {
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
