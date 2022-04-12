//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InvitationLinks {
  /// Returns a new [InvitationLinks] instance.
  InvitationLinks({
    this.member,
    this.self,
  });

  /// Returns a new [InvitationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InvitationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinks(
      member: InvitationLinksMember.fromJson(json[r'member']),
      self: InvitationLinksSelf.fromJson(json[r'self']),
    );
  }

  InvitationLinksMember member;

  InvitationLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinks &&
        other.member == member &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (member == null ? 0 : member.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<InvitationLinks> listFromJson(List<dynamic> json) {
    return <InvitationLinks>[
      if (json is List)
        for (dynamic value in json) InvitationLinks.fromJson(value),
    ];
  }

  static Map<String, InvitationLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, InvitationLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InvitationLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InvitationLinks-objects as value to a dart map
  static Map<String, List<InvitationLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InvitationLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InvitationLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'InvitationLinks[member=$member, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (member != null) r'member': member,
      if (self != null) r'self': self,
    };
  }
}
