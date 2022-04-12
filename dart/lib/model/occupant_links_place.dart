//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinksPlace {
  /// Returns a new [OccupantLinksPlace] instance.
  OccupantLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OccupantLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinksPlace? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksPlace(
      href: json[r'href'],
      iriTemplate: OccupantLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given occupant.
  String? href;

  OccupantLinksPlaceIriTemplate? iriTemplate;

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

  static List<OccupantLinksPlace> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OccupantLinksPlace>[];
    }
    return json
        .map((value) {
          return OccupantLinksPlace.fromJson(value);
        })
        .whereType<OccupantLinksPlace>()
        .toList();
  }

  static Map<String, OccupantLinksPlace> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksPlace>{};
    }

    final map = json.map((key, value) => MapEntry<String, OccupantLinksPlace?>(
        key, OccupantLinksPlace.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OccupantLinksPlace>;
  }

  // maps a json object with a list of OccupantLinksPlace-objects as value to a dart map
  static Map<String, List<OccupantLinksPlace>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OccupantLinksPlace>>{
      if (json is Map)
        for (final entry in json!.entries)
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
