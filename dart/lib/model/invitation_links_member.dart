//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InvitationLinksMember {
  /// Returns a new [InvitationLinksMember] instance.
  InvitationLinksMember({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [InvitationLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InvitationLinksMember.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksMember(
      href: json[r'href'],
      iriTemplate:
          InvitationLinksMemberIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the member associated to the given invitation.
  String href;

  InvitationLinksMemberIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksMember &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<InvitationLinksMember> listFromJson(List<dynamic> json) {
    return <InvitationLinksMember>[
      if (json is List)
        for (dynamic value in json) InvitationLinksMember.fromJson(value),
    ];
  }

  static Map<String, InvitationLinksMember> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InvitationLinksMember>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InvitationLinksMember.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InvitationLinksMember-objects as value to a dart map
  static Map<String, List<InvitationLinksMember>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InvitationLinksMember>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InvitationLinksMember.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InvitationLinksMember[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
