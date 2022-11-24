//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OccupantLinksPlace {
  /// Returns a new [OccupantLinksPlace] instance.
  OccupantLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OccupantLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OccupantLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksPlace(
      href: json[r'href'],
      iriTemplate: OccupantLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given occupant.
  String href;

  OccupantLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPlace &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OccupantLinksPlace> listFromJson(List<dynamic> json) {
    return <OccupantLinksPlace>[
      if (json is List)
        for (dynamic value in json) OccupantLinksPlace.fromJson(value),
    ];
  }

  static Map<String, OccupantLinksPlace> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OccupantLinksPlace>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksPlace.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OccupantLinksPlace-objects as value to a dart map
  static Map<String, List<OccupantLinksPlace>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OccupantLinksPlace>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksPlace.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OccupantLinksPlace[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
