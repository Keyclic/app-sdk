//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceLinksChildren {
  /// Returns a new [PlaceLinksChildren] instance.
  PlaceLinksChildren({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksChildren] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceLinksChildren.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksChildren(
      href: json[r'href'],
      iriTemplate: PlaceLinksChildrenIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the children associated to the given place.
  String href;

  PlaceLinksChildrenIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksChildren &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlaceLinksChildren> listFromJson(List<dynamic> json) {
    return <PlaceLinksChildren>[
      if (json is List)
        for (dynamic value in json) PlaceLinksChildren.fromJson(value),
    ];
  }

  static Map<String, PlaceLinksChildren> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlaceLinksChildren>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksChildren.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceLinksChildren-objects as value to a dart map
  static Map<String, List<PlaceLinksChildren>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceLinksChildren>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksChildren.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlaceLinksChildren[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
