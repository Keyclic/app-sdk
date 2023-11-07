//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksPlans {
  /// Returns a new [PlaceLinksPlans] instance.
  PlaceLinksPlans({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksPlans] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksPlans? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksPlans(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : PlaceLinksPlansIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the plans associated to the given place.
  String? href;

  PlaceLinksPlansIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksPlans &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlaceLinksPlans> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksPlans>[];
    }

    return json.fold(<PlaceLinksPlans>[],
        (List<PlaceLinksPlans> previousValue, element) {
      final PlaceLinksPlans? object = PlaceLinksPlans.fromJson(element);
      if (object is PlaceLinksPlans) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksPlans> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksPlans>{};
    }

    return json.entries.fold(<String, PlaceLinksPlans>{},
        (Map<String, PlaceLinksPlans> previousValue, element) {
      final PlaceLinksPlans? object = PlaceLinksPlans.fromJson(element.value);
      if (object is PlaceLinksPlans) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksPlans-objects as value to a dart map
  static Map<String, List<PlaceLinksPlans>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksPlans>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksPlans>>(
          key, PlaceLinksPlans.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceLinksPlans[href=$href, iriTemplate=$iriTemplate]';

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
