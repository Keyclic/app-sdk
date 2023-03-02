//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceLinksSelf {
  /// Returns a new [PlaceLinksSelf] instance.
  PlaceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksSelf(
      href: json[r'href'],
      iriTemplate: PlaceLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given place.
  String href;

  PlaceLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlaceLinksSelf> listFromJson(List<dynamic> json) {
    return <PlaceLinksSelf>[
      if (json is List)
        for (dynamic value in json) PlaceLinksSelf.fromJson(value),
    ];
  }

  static Map<String, PlaceLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, PlaceLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceLinksSelf-objects as value to a dart map
  static Map<String, List<PlaceLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
