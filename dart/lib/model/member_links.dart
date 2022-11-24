//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MemberLinks {
  /// Returns a new [MemberLinks] instance.
  MemberLinks({
    this.organization,
    this.person,
    this.self,
  });

  /// Returns a new [MemberLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MemberLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinks(
      organization: MemberLinksOrganization.fromJson(json[r'organization']),
      person: MemberLinksPerson.fromJson(json[r'person']),
      self: MemberLinksSelf.fromJson(json[r'self']),
    );
  }

  MemberLinksOrganization organization;

  MemberLinksPerson person;

  MemberLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinks &&
        other.organization == organization &&
        other.person == person &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (person == null ? 0 : person.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<MemberLinks> listFromJson(List<dynamic> json) {
    return <MemberLinks>[
      if (json is List)
        for (dynamic value in json) MemberLinks.fromJson(value),
    ];
  }

  static Map<String, MemberLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, MemberLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MemberLinks-objects as value to a dart map
  static Map<String, List<MemberLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MemberLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'MemberLinks[organization=$organization, person=$person, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (organization != null) r'organization': organization,
      if (person != null) r'person': person,
      if (self != null) r'self': self,
    };
  }
}
