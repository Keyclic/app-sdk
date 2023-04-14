//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationLinks {
  /// Returns a new [InvitationLinks] instance.
  InvitationLinks({
    this.member,
    this.self,
  });

  /// Returns a new [InvitationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InvitationLinks(
      member: InvitationLinksMember.fromJson(json[r'member']),
      self: InvitationLinksSelf.fromJson(json[r'self']),
    );
  }

  InvitationLinksMember? member;

  InvitationLinksSelf? self;

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

  static List<InvitationLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InvitationLinks>[];
    }

    return json.fold(<InvitationLinks>[],
        (List<InvitationLinks> previousValue, element) {
      final InvitationLinks? object = InvitationLinks.fromJson(element);
      if (object is InvitationLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InvitationLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationLinks>{};
    }

    return json.entries.fold(<String, InvitationLinks>{},
        (Map<String, InvitationLinks> previousValue, element) {
      final InvitationLinks? object = InvitationLinks.fromJson(element.value);
      if (object is InvitationLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InvitationLinks-objects as value to a dart map
  static Map<String, List<InvitationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InvitationLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InvitationLinks>>(
          key, InvitationLinks.listFromJson(value));
    });
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
