//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OccupantLinksSelf {
  /// Returns a new [OccupantLinksSelf] instance.
  OccupantLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OccupantLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OccupantLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksSelf(
      href: json[r'href'],
      iriTemplate: OccupantLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given occupant.
  String href;

  OccupantLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OccupantLinksSelf> listFromJson(List<dynamic> json) {
    return <OccupantLinksSelf>[
      if (json is List)
        for (dynamic value in json) OccupantLinksSelf.fromJson(value),
    ];
  }

  static Map<String, OccupantLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, OccupantLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OccupantLinksSelf-objects as value to a dart map
  static Map<String, List<OccupantLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OccupantLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OccupantLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
