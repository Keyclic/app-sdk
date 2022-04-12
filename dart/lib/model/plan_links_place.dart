//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlanLinksPlace {
  /// Returns a new [PlanLinksPlace] instance.
  PlanLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlanLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlanLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksPlace(
      href: json[r'href'],
      iriTemplate: PlanLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given plan.
  String href;

  PlanLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksPlace &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlanLinksPlace> listFromJson(List<dynamic> json) {
    return <PlanLinksPlace>[
      if (json is List)
        for (dynamic value in json) PlanLinksPlace.fromJson(value),
    ];
  }

  static Map<String, PlanLinksPlace> mapFromJson(Map<String, dynamic> json) {
    return <String, PlanLinksPlace>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinksPlace.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlanLinksPlace-objects as value to a dart map
  static Map<String, List<PlanLinksPlace>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlanLinksPlace>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinksPlace.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanLinksPlace[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
