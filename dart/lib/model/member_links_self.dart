//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MemberLinksSelf {
  /// Returns a new [MemberLinksSelf] instance.
  MemberLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MemberLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MemberLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinksSelf(
      href: json[r'href'],
      iriTemplate: MemberLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given member.
  String href;

  MemberLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<MemberLinksSelf> listFromJson(List<dynamic> json) {
    return <MemberLinksSelf>[
      if (json is List)
        for (dynamic value in json) MemberLinksSelf.fromJson(value),
    ];
  }

  static Map<String, MemberLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, MemberLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MemberLinksSelf-objects as value to a dart map
  static Map<String, List<MemberLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MemberLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MemberLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
