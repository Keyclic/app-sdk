//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MemberLinksOrganization {
  /// Returns a new [MemberLinksOrganization] instance.
  MemberLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MemberLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MemberLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinksOrganization(
      href: json[r'href'],
      iriTemplate:
          MemberLinksOrganizationIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given member.
  String href;

  MemberLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<MemberLinksOrganization> listFromJson(List<dynamic> json) {
    return <MemberLinksOrganization>[
      if (json is List)
        for (dynamic value in json) MemberLinksOrganization.fromJson(value),
    ];
  }

  static Map<String, MemberLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return <String, MemberLinksOrganization>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinksOrganization.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MemberLinksOrganization-objects as value to a dart map
  static Map<String, List<MemberLinksOrganization>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MemberLinksOrganization>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinksOrganization.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'MemberLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
