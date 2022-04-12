//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OccupantLinksMember {
  /// Returns a new [OccupantLinksMember] instance.
  OccupantLinksMember({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OccupantLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OccupantLinksMember.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksMember(
      href: json[r'href'],
      iriTemplate:
          OccupantLinksMemberIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the member associated to the given occupant.
  String href;

  OccupantLinksMemberIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksMember &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OccupantLinksMember> listFromJson(List<dynamic> json) {
    return <OccupantLinksMember>[
      if (json is List)
        for (dynamic value in json) OccupantLinksMember.fromJson(value),
    ];
  }

  static Map<String, OccupantLinksMember> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OccupantLinksMember>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksMember.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OccupantLinksMember-objects as value to a dart map
  static Map<String, List<OccupantLinksMember>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OccupantLinksMember>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksMember.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OccupantLinksMember[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
