//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceLinksPlans {
  /// Returns a new [PlaceLinksPlans] instance.
  PlaceLinksPlans({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksPlans] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceLinksPlans.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksPlans(
      href: json[r'href'],
      iriTemplate: PlaceLinksPlansIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the plans associated to the given place.
  String href;

  PlaceLinksPlansIriTemplate iriTemplate;

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

  static List<PlaceLinksPlans> listFromJson(List<dynamic> json) {
    return <PlaceLinksPlans>[
      if (json is List)
        for (dynamic value in json) PlaceLinksPlans.fromJson(value),
    ];
  }

  static Map<String, PlaceLinksPlans> mapFromJson(Map<String, dynamic> json) {
    return <String, PlaceLinksPlans>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksPlans.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceLinksPlans-objects as value to a dart map
  static Map<String, List<PlaceLinksPlans>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceLinksPlans>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksPlans.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksPlans[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
