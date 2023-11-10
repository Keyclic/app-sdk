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

    return json.fold(<PlanLinksPlace>[],
        (List<PlanLinksPlace> previousValue, element) {
      final PlanLinksPlace? object = PlanLinksPlace.fromJson(element);
      if (object is PlanLinksPlace) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanLinksPlace> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinksPlace>{};
    }

    return json.entries.fold(<String, PlanLinksPlace>{},
        (Map<String, PlanLinksPlace> previousValue, element) {
      final PlanLinksPlace? object = PlanLinksPlace.fromJson(element.value);
      if (object is PlanLinksPlace) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanLinksPlace-objects as value to a dart map
  static Map<String, List<PlanLinksPlace>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanLinksPlace>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanLinksPlace>>(
          key, PlanLinksPlace.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanLinksPlace[href=$href, iriTemplate=$iriTemplate]';

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
