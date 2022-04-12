//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlanLinksImage {
  /// Returns a new [PlanLinksImage] instance.
  PlanLinksImage({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlanLinksImage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlanLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksImage(
      href: json[r'href'],
      iriTemplate: PlanLinksImageIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the image associated to the given plan.
  String href;

  PlanLinksImageIriTemplate iriTemplate;

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

  static List<PlanLinksImage> listFromJson(List<dynamic> json) {
    return <PlanLinksImage>[
      if (json is List)
        for (dynamic value in json) PlanLinksImage.fromJson(value),
    ];
  }

  static Map<String, PlanLinksImage> mapFromJson(Map<String, dynamic> json) {
    return <String, PlanLinksImage>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinksImage.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlanLinksImage-objects as value to a dart map
  static Map<String, List<PlanLinksImage>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlanLinksImage>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinksImage.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanLinksImage[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
