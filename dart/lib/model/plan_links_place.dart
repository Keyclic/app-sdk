//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanLinksPlace {
  /// Returns a new [PlanLinksPlace] instance.
  PlanLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlanLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanLinksPlace? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanLinksPlace(
      href: json[r'href'],
      iriTemplate: PlanLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given plan.
  String? href;

  PlanLinksPlaceIriTemplate? iriTemplate;

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

  static List<PlanLinksPlace> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanLinksPlace>[];
    }
    return json
        .map((value) {
          return PlanLinksPlace.fromJson(value);
        })
        .whereType<PlanLinksPlace>()
        .toList();
  }

  static Map<String, PlanLinksPlace> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinksPlace>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlanLinksPlace?>(key, PlanLinksPlace.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlanLinksPlace>;
  }

  // maps a json object with a list of PlanLinksPlace-objects as value to a dart map
  static Map<String, List<PlanLinksPlace>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlanLinksPlace>>{
      if (json is Map)
        for (final entry in json!.entries)
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
