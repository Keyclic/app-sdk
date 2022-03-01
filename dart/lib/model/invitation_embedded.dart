part of keyclic_sdk_api.api;

class InvitationEmbedded {
  InvitationEmbedded({
    this.member,
  });

  factory InvitationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationEmbedded(
      member: Member.fromJson(json['member']),
    );
  }

  Member member;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationEmbedded &&
        runtimeType == other.runtimeType &&
        member == other.member;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;

    return hashCode;
  }

  static List<InvitationEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InvitationEmbedded.fromJson(value))
            ?.toList() ??
        <InvitationEmbedded>[];
  }

  static Map<String, InvitationEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InvitationEmbedded>((String key, dynamic value) {
          return MapEntry(key, InvitationEmbedded.fromJson(value));
        }) ??
        <String, InvitationEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member.toJson(),
    };
  }

  @override
  String toString() {
    return 'InvitationEmbedded[member=$member, ]';
  }
}
